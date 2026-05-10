import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_colors.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';

class SettingsAppHeader extends StatelessWidget {
  const SettingsAppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 8),
        Image.asset(
          'assets/images/logo.png',
          width: 72,
          height: 72,
          errorBuilder: (_, _, _) =>
              const Icon(Icons.radar, size: 72, color: AppColors.accent),
        ),
        const SizedBox(height: 12),
        Text(
          AppStrings.appTitle,
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                fontWeight: FontWeight.w300,
                letterSpacing: 1.4,
              ),
        ),
        const SizedBox(height: 24),
      ],
    );
  }
}
