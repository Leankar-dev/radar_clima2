import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';
import 'package:radar_clima2/features/weather/presentation/screens/widgets/weather_display.dart';

class CurrentWeatherCard extends StatelessWidget {
  final WeatherModel weather;

  const CurrentWeatherCard({super.key, required this.weather});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColors.white10,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.white20),
      ),
      padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 24),
      child: WeatherDisplay(weather: weather),
    );
  }
}
