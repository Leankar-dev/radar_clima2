import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';

abstract class WeatherRepository {
  Future<WeatherModel> fetchWeather(String city);
  Future<WeatherModel> fetchWeatherByCoords(double lat, double lon);
}
