import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PreferencesService {
  static const String _lastCityKey = 'last_city';
  static const String _themeModeKey = 'theme_mode';
  static const String _lastLatKey = 'last_lat';
  static const String _lastLonKey = 'last_lon';

  Future<String?> getLastCity() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_lastCityKey);
  }

  Future<void> saveLastCity(String city) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_lastCityKey, city);
  }

  Future<(double, double)?> getLastCoords() async {
    final prefs = await SharedPreferences.getInstance();
    final lat = prefs.getDouble(_lastLatKey);
    final lon = prefs.getDouble(_lastLonKey);
    if (lat == null || lon == null) return null;
    return (lat, lon);
  }

  Future<void> saveLastCoords(double lat, double lon) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setDouble(_lastLatKey, lat);
    await prefs.setDouble(_lastLonKey, lon);
  }

  Future<void> clearLastCoords() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_lastLatKey);
    await prefs.remove(_lastLonKey);
  }

  Future<ThemeMode> getTheme() async {
    final prefs = await SharedPreferences.getInstance();
    final index = prefs.getInt(_themeModeKey);
    return index != null ? ThemeMode.values[index] : ThemeMode.system;
  }

  Future<void> saveTheme(ThemeMode mode) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeModeKey, mode.index);
  }
}
