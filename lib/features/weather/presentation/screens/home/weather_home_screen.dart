import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/features/weather/presentation/providers/weather_notifier.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/aurora_halo.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/current_weather_card.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/weather_error_view.dart';
import 'package:radar_clima2/shared/widgets/loading_overlay.dart';
import 'package:radar_clima2/shared/widgets/weather_app_bar.dart';

class WeatherHomeScreen extends ConsumerStatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  ConsumerState<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends ConsumerState<WeatherHomeScreen> {
  final _cityEC = TextEditingController();

  @override
  void dispose() {
    _cityEC.dispose();
    super.dispose();
  }

  void _onRetry() {
    final city = _cityEC.text.trim();
    if (city.isNotEmpty) {
      ref.read(weatherProvider.notifier).searchWeather(city);
    }
  }

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      // Permite que o conteúdo fique visivel atrás da AppBar, para o efeito de halo aurora funcionar melhor
      extendBodyBehindAppBar: true,
      appBar: const WeatherAppBar(),
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -80,
            child: AuroraHalo(
              size: 380,
              color: AppColors.auroraBlue,
              alpha: 55,
            ),
          ),
          Positioned(
            top: 200,
            right: -90,
            child: AuroraHalo(
              size: 300,
              color: AppColors.auroraViolet,
              alpha: 45,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: AuroraHalo(size: 220, color: AppColors.accent, alpha: 28),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: Column(
                children: [
                  const SizedBox(height: 8),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.white10,
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(color: AppColors.white20),
                    ),
                    child: TextField(
                      controller: _cityEC,
                      style: const TextStyle(color: AppColors.white90),
                      cursorColor: AppColors.accent,
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 18,
                        ),
                        labelText: AppStrings.searchLabel,
                        labelStyle: const TextStyle(color: AppColors.white60),
                        border: InputBorder.none,
                        suffixIcon: IconButton(
                          icon: const Icon(
                            Icons.search,
                            color: AppColors.accent,
                          ),
                          onPressed: () {
                            final city = _cityEC.text.trim();

                            if (city.isEmpty) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: AppColors.snackbarBg,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                    side: const BorderSide(
                                      color: AppColors.white20,
                                    ),
                                  ),
                                  behavior: SnackBarBehavior.floating,
                                  content: const Text(
                                    AppStrings.searchEmptyError,
                                    style: TextStyle(color: AppColors.white90),
                                  ),
                                  duration: const Duration(seconds: 2),
                                ),
                              );
                              return;
                            }
                            ref
                                .read(weatherProvider.notifier)
                                .searchWeather(city);
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 32),
                  Expanded(
                    child: SingleChildScrollView(
                      physics: const BouncingScrollPhysics(),
                      child: weatherState.when(
                        data: (weather) => CurrentWeatherCard(weather: weather),
                        error: (err, stack) => WeatherErrorView(
                          error: err,
                          onRetry: _onRetry,
                        ),
                        loading: () => const LoadingOverlay(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
