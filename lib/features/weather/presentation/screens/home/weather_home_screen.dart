import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/core/errors/failure.dart';
import 'package:radar_clima2/features/weather/domain/models/geocoding_model.dart';
import 'package:radar_clima2/features/weather/presentation/providers/search_notifier.dart';
import 'package:radar_clima2/features/weather/presentation/providers/weather_notifier.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/aurora_halo.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/city_disambiguation_sheet.dart';
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
    FocusScope.of(context).unfocus();
    ref.read(searchProvider.notifier).searchCity(_cityEC.text.trim());
  }

  void _onRetry() {
    final city = _cityEC.text.trim();
    if (city.isEmpty) {
      WeatherSnackBar.show(context, AppStrings.searchEmptyError, isError: true);
      return;
    }
    ref.read(searchProvider.notifier).searchCity(city);
  }

  void _selectCity(GeocodingModel city) {
    ref.read(weatherProvider.notifier).searchWeatherByCoords(
      city.lat,
      city.lon,
      city.name,
    );
  }

  void _showDisambiguationSheet(List<GeocodingModel> cities) {
    showModalBottomSheet<void>(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (_) => CityDisambiguationSheet(
        cities: cities,
        onCitySelected: (city) {
          Navigator.pop(context);
          _selectCity(city);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    ref.listen<AsyncValue<List<GeocodingModel>?>>(
      searchProvider,
      (_, state) {
        state.whenOrNull(
          data: (cities) {
            if (cities == null) return;
            if (cities.length == 1) {
              _selectCity(cities.first);
            } else {
              _showDisambiguationSheet(cities);
            }
          },
          error: (err, _) {
            if (err is! CityNotFoundException) {
              final city = _cityEC.text.trim();
              if (city.isNotEmpty) {
                ref.read(weatherProvider.notifier).searchWeather(city);
                return;
              }
            }
            final message =
                err is Failure ? err.message : AppStrings.unexpectedError;
            WeatherSnackBar.show(context, message, isError: true);
          },
        );
      },
    );

    final weatherState = ref.watch(weatherProvider);
    final isGeocoding = ref.watch(searchProvider).isLoading;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: AppColors.background,
      resizeToAvoidBottomInset: true,
      extendBodyBehindAppBar: true,
      drawer: const AppDrawer(),
      appBar: const WeatherAppBar(),
      body: Stack(
        children: [
          Positioned(
            top: -100,
            left: -80,
            child: AuroraHalo(
              size: screenWidth * 0.95,
              color: AppColors.auroraBlue,
              alpha: 55,
            ),
          ),
          Positioned(
            top: 200,
            right: -90,
            child: AuroraHalo(
              size: screenWidth * 0.75,
              color: AppColors.auroraViolet,
              alpha: 45,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 20,
            child: AuroraHalo(
              size: screenWidth * 0.55,
              color: AppColors.accent,
              alpha: 28,
            ),
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
                      suffixIcon: isGeocoding
                          ? const _SearchLoadingIndicator()
                          : IconButton(
                              icon: const Icon(
                                Icons.search,
                                color: AppColors.accent,
                              ),
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

class _SearchLoadingIndicator extends StatelessWidget {
  const _SearchLoadingIndicator();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(12),
      child: SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(
          strokeWidth: 2,
          color: AppColors.accent,
        ),
      ),
    );
  }
}
