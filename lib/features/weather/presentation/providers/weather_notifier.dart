import 'package:radar_clima2/core/constants/app_strings.dart';
import 'package:radar_clima2/core/storage/preferences_service_provider.dart';
import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';
import 'package:radar_clima2/features/weather/presentation/providers/fetch_weather_by_coords_usecase_provider.dart';
import 'package:radar_clima2/features/weather/presentation/providers/fetch_weather_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_notifier.g.dart';

@riverpod
class WeatherNotifier extends _$WeatherNotifier {
  @override
  FutureOr<WeatherModel> build() async {
    final prefs = ref.read(preferencesServiceProvider);
    final coords = await prefs.getLastCoords();
    if (coords != null) {
      final (lat, lon) = coords;
      final lastCity = await prefs.getLastCity();
      final result = await ref.read(fetchWeatherByCoordsUseCaseProvider)(lat, lon);
      return result.copyWith(cityName: lastCity ?? result.cityName);
    }
    final lastCity = await prefs.getLastCity();
    return ref.read(fetchWeatherUseCaseProvider)(lastCity ?? AppStrings.defaultCity);
  }

  Future<void> searchWeather(String cityName) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(fetchWeatherUseCaseProvider)(cityName);
      final prefs = ref.read(preferencesServiceProvider);
      await prefs.saveLastCity(cityName);
      await prefs.clearLastCoords();
      return result;
    });
  }

  Future<void> searchWeatherByCoords(
    double lat,
    double lon,
    String cityName,
  ) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await ref.read(fetchWeatherByCoordsUseCaseProvider)(lat, lon);
      final prefs = ref.read(preferencesServiceProvider);
      await prefs.saveLastCity(cityName);
      await prefs.saveLastCoords(lat, lon);
      return result.copyWith(cityName: cityName);
    });
  }
}
