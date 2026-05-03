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
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          '${weather.cityName}, ${weather.country}',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
            color: AppColors.white90,
            fontWeight: FontWeight.w600,
            letterSpacing: 0.5,
          ),
        ),
        Image.network(
          weather.iconUrl,
          width: 100,
          height: 100,
          fit: BoxFit.contain,
          semanticLabel: 'Ícone do clima: ${weather.description}',
          errorBuilder: (_, _, _) =>
              const Icon(Icons.wb_cloudy_outlined, color: AppColors.accent, size: 80),
        ),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: weather.temperature.toStringAsFixed(1),
                style: Theme.of(context).textTheme.displayMedium?.copyWith(
                  color: AppColors.white90,
                  fontWeight: FontWeight.w200,
                  fontSize: 72,
                ),
              ),
              TextSpan(
                text: AppStrings.celsius,
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  color: AppColors.accent,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
        ),
        Text(
          weather.description.toUpperCase(),
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            color: AppColors.white60,
            letterSpacing: 2,
            fontSize: 13,
          ),
        ),
        const SizedBox(height: 24),
        Container(height: 0.5, color: AppColors.white20),
        const SizedBox(height: 20),
        _WeatherDetailsRow(weather: weather),
      ],
    );
  }
}

class _WeatherDetailsRow extends StatelessWidget {
  const _WeatherDetailsRow({required this.weather});

  final WeatherModel weather;

  @override
  Widget build(BuildContext context) {
    final windKmh = (weather.windSpeed * 3.6).toStringAsFixed(1);

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _DetailItem(
          icon: Icons.water_drop_outlined,
          label: AppStrings.humidity,
          value: '${weather.humidity}${AppStrings.humidityUnit}',
        ),
        Container(height: 36, width: 0.5, color: AppColors.white20),
        _DetailItem(
          icon: Icons.air,
          label: AppStrings.wind,
          value: '$windKmh ${AppStrings.windUnit}',
        ),
        Container(height: 36, width: 0.5, color: AppColors.white20),
        _DetailItem(
          icon: Icons.thermostat_outlined,
          label: AppStrings.feelsLike,
          value: '${weather.feelsLike.toStringAsFixed(1)}${AppStrings.celsius}',
        ),
      ],
    );
  }
}

class _DetailItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final String value;

  const _DetailItem({
    required this.icon,
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, color: AppColors.accent, size: 20),
        const SizedBox(height: 6),
        Text(
          value,
          style: const TextStyle(
            color: AppColors.white90,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(height: 2),
        Text(
          label,
          style: const TextStyle(
            color: AppColors.white60,
            fontSize: 11,
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
