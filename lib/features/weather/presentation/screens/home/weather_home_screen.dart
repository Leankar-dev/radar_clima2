import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/features/weather/presentation/providers/weather_notifier.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/aurora_halo.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/current_weather_card.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/weather_error_view.dart';
import 'package:radar_clima2/shared/widgets/custom_text_form_field.dart';
import 'package:radar_clima2/shared/widgets/loading_overlay.dart';
import 'package:radar_clima2/shared/widgets/weather_app_bar.dart';
import 'package:radar_clima2/shared/widgets/app_drawer.dart';
import 'package:radar_clima2/shared/widgets/weather_snack_bar.dart';

class WeatherHomeScreen extends ConsumerStatefulWidget {
  const WeatherHomeScreen({super.key});

  @override
  ConsumerState<WeatherHomeScreen> createState() => _WeatherHomeScreenState();
}

class _WeatherHomeScreenState extends ConsumerState<WeatherHomeScreen> {
  final _cityEC = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _cityEC.dispose();
    super.dispose();
  }

  void _onSearchPressed() {
    if (!_formKey.currentState!.validate()) return;

    final city = _cityEC.text.trim();
    ref.read(weatherProvider.notifier).searchWeather(city);
    FocusScope.of(context).unfocus();
  }

  void _onRetry() {
    final city = _cityEC.text.trim();
    if (city.isEmpty) {
      WeatherSnackBar.show(context, AppStrings.searchEmptyError, isError: true);
      return;
    }
    ref.read(weatherProvider.notifier).searchWeather(city);
  }

  @override
  Widget build(BuildContext context) {
    final weatherState = ref.watch(weatherProvider);

    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      // Permite que o conteúdo fique visivel atrás da AppBar, para o efeito de halo aurora funcionar melhor
      extendBodyBehindAppBar: true,
      drawer: const AppDrawer(),
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
                  Form(
                    key: _formKey,
                    child: CustomTextFormField(
                      controller: _cityEC,
                      labelText: AppStrings.searchLabel,
                      textInputAction: TextInputAction.search,
                      onFieldSubmitted: (_) => _onSearchPressed(),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return AppStrings.searchEmptyError;
                        }
                        return null;
                      },
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.search, color: AppColors.accent),
                        onPressed: _onSearchPressed,
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
