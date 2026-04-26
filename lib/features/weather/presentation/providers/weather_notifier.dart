import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';
import 'package:radar_clima2/features/weather/domain/usecases/fetch_weather_use_case_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_notifier.g.dart';

@riverpod
class WeatherNotifier extends _$WeatherNotifier {
  @override
  FutureOr<WeatherModel> build() => _fetchWeather('São Paulo');

  Future<WeatherModel> _fetchWeather(String cityName) =>
      ref.read(fetchWeatherUseCaseProvider)(cityName);

  Future<void> searchWeather(String cityName) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(() => _fetchWeather(cityName));
  }
}
