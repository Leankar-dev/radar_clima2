import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/core/errors/failure.dart';
import 'package:radar_clima2/shared/widgets/weather_button.dart';

class WeatherErrorView extends StatelessWidget {
  const WeatherErrorView({super.key, required this.error, required this.onRetry});

  final Object error;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final message = error is Failure
        ? (error as Failure).message
        : AppStrings.unexpectedError;

    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const SizedBox(height: 32),
        const Icon(Icons.cloud_off_outlined, color: AppColors.white60, size: 56),
        const SizedBox(height: 16),
        Text(
          message,
          textAlign: TextAlign.center,
          style: const TextStyle(color: AppColors.white60, fontSize: 15),
        ),
        const SizedBox(height: 24),
        WeatherButton(
          label: AppStrings.retryButton,
          icon: Icons.refresh,
          onPressed: onRetry,
        ),
      ],
    );
  }
}
