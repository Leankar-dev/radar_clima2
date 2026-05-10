import 'package:flutter/material.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/features/settings/presentation/widgets/app_info_card.dart';
import 'package:radar_clima2/features/settings/presentation/widgets/settings_app_header.dart';
import 'package:radar_clima2/features/settings/presentation/widgets/theme_selector_card.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.settings),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        children: const [
          SettingsAppHeader(),
          ThemeSelectorCard(),
          SizedBox(height: 16),
          AppInfoCard(),
        ],
      ),
    );
  }
}
