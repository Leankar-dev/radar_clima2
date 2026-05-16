import 'package:radar_clima2/core/storage/preferences_service_provider.dart';
import 'package:radar_clima2/features/weather/data/repositories/weather_repository_provider.dart';
import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';
import 'package:radar_clima2/features/weather/domain/usecases/fetch_weather_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_notifier.g.dart';

@riverpod
class WeatherNotifier extends _$WeatherNotifier {
  @override
  FutureOr<WeatherModel> build() async {
    final prefs = ref.read(preferencesServiceProvider);
    final lastCity = await prefs.getLastCity();
    return _fetchWeather(lastCity ?? 'São Paulo');
  }

  Future<WeatherModel> _fetchWeather(String cityName) =>
      ref.read(fetchWeatherUseCaseProvider)(cityName);

  Future<void> searchWeather(String cityName) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() async {
      final result = await _fetchWeather(cityName);
      await ref.read(preferencesServiceProvider).saveLastCity(cityName);
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
      final result = await ref
          .read(weatherRepositoryProvider)
          .fetchWeatherByCoords(lat, lon);
      await ref.read(preferencesServiceProvider).saveLastCity(cityName);
      return result.copyWith(cityName: cityName);
    });
  }
}
