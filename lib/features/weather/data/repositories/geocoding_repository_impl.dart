import 'package:dio/dio.dart';
import 'package:radar_clima2/core/constants/api_constants.dart';
import 'package:radar_clima2/core/errors/failure.dart';
import 'package:radar_clima2/core/network/connectivity_service.dart';
import 'package:radar_clima2/features/weather/data/dto/geocoding_dto.dart';
import 'package:radar_clima2/features/weather/domain/repositories/geocoding_repository.dart';
import 'package:radar_clima2/features/weather/domain/models/geocoding_model.dart';

class GeocodingRepositoryImpl implements GeocodingRepository {
  final Dio _dio;
  final ConnectivityService _connectivityService;

  GeocodingRepositoryImpl(this._dio, {ConnectivityService? connectivityService})
      : _connectivityService = connectivityService ?? ConnectivityService();

  @override
  Future<List<GeocodingModel>> searchCity(String cityName) async {
    final isConnected = await _connectivityService.hasConnection();
    if (!isConnected) throw const NetworkFailure();

    try {
      final response = await _dio.get(
        ApiConstants.geoDirectPath,
        queryParameters: {'q': cityName, 'limit': 5},
      );

      final list = (response.data as List)
          .map((e) => GeocodingDto.fromJson(e as Map<String, dynamic>))
          .toList();

      return list
          .map(
            (dto) => GeocodingModel(
              name: dto.name,
              state: dto.state,
              country: dto.country,
              lat: dto.lat,
              lon: dto.lon,
            ),
          )
          .toList();
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw const TimeoutFailure();
      }

      if (e.response?.statusCode == 401) throw const ApiKeyInvalidFailure();
      throw const ServerFailure();
    }
  }
}
