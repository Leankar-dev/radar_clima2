import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/core/constants/app_theme.dart';
import 'package:radar_clima2/features/settings/presentation/providers/theme_notifier.dart';
import 'package:radar_clima2/features/splash/presentation/screens/splash_screen.dart';

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode =
        ref.watch(themeProvider).asData?.value ?? ThemeMode.system;
    return MaterialApp(
      title: AppStrings.appTitle,
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      themeMode: themeMode,
      home: const SplashScreen(),
    );
  }
}
