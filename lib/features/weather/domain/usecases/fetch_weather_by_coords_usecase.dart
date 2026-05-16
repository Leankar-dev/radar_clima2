import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';
import 'package:radar_clima2/features/weather/domain/repositories/weather_repository.dart';

class FetchWeatherByCoordsUseCase {
  final WeatherRepository _repository;

  FetchWeatherByCoordsUseCase(this._repository);

  Future<WeatherModel> call(double lat, double lon) =>
      _repository.fetchWeatherByCoords(lat, lon);
}
