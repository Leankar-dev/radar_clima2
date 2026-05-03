import 'package:dio/dio.dart';
import 'package:radar_clima2/core/errors/failure.dart';
import 'package:radar_clima2/core/network/connectivity_service.dart';
import 'package:radar_clima2/features/weather/data/dto/weather_dto.dart';
import 'package:radar_clima2/features/weather/data/repositories/weather_repository.dart';
import 'package:radar_clima2/features/weather/domain/models/weather_model.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final Dio _dio;
  final ConnectivityService _connectivityService;

  WeatherRepositoryImpl(this._dio, {ConnectivityService? connectivityService})
    : _connectivityService = connectivityService ?? ConnectivityService();

  @override
  Future<WeatherModel> fetchWeather(String city) async {
    final isConnected = await _connectivityService.hasConnection();
    if (!isConnected) {
      throw const NetworkFailure();
    }

    try {
      final response = await _dio.get(
        'weather',
        queryParameters: {
          'q': city,
          'units': 'metric',
          'lang': 'pt_br',
        },
      );
      final dto = WeatherDto.fromJson(response.data);

      if (dto.weather.isEmpty) {
        throw const CityNotFoundException();
      }

      return WeatherModel(
        cityName: dto.name,
        country: dto.sys.country,
        temperature: dto.main.temp,
        feelsLike: dto.main.feelsLike,
        humidity: dto.main.humidity,
        windSpeed: dto.wind.speed,
        description: dto.weather.first.description,
        iconUrl:
            'https://openweathermap.org/img/wn/${dto.weather.first.icon}@2x.png',
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw const TimeoutFailure();
      }

      final statusCode = e.response?.statusCode;

      if (statusCode == 404) throw const CityNotFoundException();
      if (statusCode == 401) throw const ApiKeyInvalidFailure();

      throw const ServerFailure();
    }
  }
}
