import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/core/constants/app_theme.dart';
import 'package:radar_clima2/features/settings/presentation/providers/theme_notifier.dart';
import 'package:radar_clima2/features/weather/presentation/screens/home/weather_home_screen.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeProvider);
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      home: const WeatherHomeScreen(), // Passo 3 trocará por SplashScreen
    );
  }
}
