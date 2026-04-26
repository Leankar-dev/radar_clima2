import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';

class WeatherDisplay extends StatelessWidget {
  final WeatherModel weather;

  const WeatherDisplay({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          weather.cityName,
          style: Theme.of(context).textTheme.headlineMedium?.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 32,
            color: AppColors.white90,
          ),
        ),
        const SizedBox(height: 8),
        Image.network(
          weather.iconUrl,
          scale: 0.5,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.wb_sunny_outlined,
            size: 50,
            color: AppColors.accent,
          ),
        ),
        Text(
          '${weather.temperature.round()}${AppStrings.celsius}',
          style: Theme.of(context).textTheme.displayLarge?.copyWith(
            fontWeight: FontWeight.w300,
            color: AppColors.accent,
          ),
        ),
        Text(
          weather.description.toUpperCase(),
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
            letterSpacing: 1.4,
            color: AppColors.white50,
          ),
        ),
      ],
    );
  }
}
