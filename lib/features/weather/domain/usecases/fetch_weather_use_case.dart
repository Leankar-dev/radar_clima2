import 'package:radar_clima2/features/weather/domain/repositories/weather_repository.dart';
import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';

class FetchWeatherUseCase {
  final WeatherRepository _repository;

  FetchWeatherUseCase(this._repository);

  Future<WeatherModel> call(String cityName) =>
      _repository.fetchWeather(cityName);
}
