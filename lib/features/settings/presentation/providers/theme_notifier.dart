import 'package:flutter/material.dart';
import 'package:radar_clima2/core/storage/preferences_service_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theme_notifier.g.dart';

@riverpod
class ThemeNotifier extends _$ThemeNotifier {
  @override
  ThemeMode build() {
    _loadSavedTheme();
    return ThemeMode.system;
  }

  Future<void> setTheme(ThemeMode mode) async {
    state = mode;
    await ref.read(preferencesServiceProvider).saveTheme(mode);
  }

  Future<void> _loadSavedTheme() async {
    state = await ref.read(preferencesServiceProvider).getTheme();
  }
}
