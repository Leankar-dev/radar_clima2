import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/features/settings/presentation/providers/theme_notifier.dart';

class ThemeSelectorCard extends ConsumerWidget {
  const ThemeSelectorCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final current = ref.watch(themeProvider);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppStrings.themeLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            SegmentedButton<ThemeMode>(
              segments: const [
                ButtonSegment(
                  value: ThemeMode.light,
                  label: Text(AppStrings.themeLightOption),
                  icon: Icon(Icons.wb_sunny_outlined),
                ),
                ButtonSegment(
                  value: ThemeMode.dark,
                  label: Text(AppStrings.themeDarkOption),
                  icon: Icon(Icons.nightlight_outlined),
                ),
                ButtonSegment(
                  value: ThemeMode.system,
                  label: Text(AppStrings.themeSystemOption),
                  icon: Icon(Icons.settings_suggest_outlined),
                ),
              ],
              selected: {current},
              onSelectionChanged: (selection) =>
                  ref.read(themeProvider.notifier).setTheme(selection.first),
            ),
          ],
        ),
      ),
    );
  }
}
