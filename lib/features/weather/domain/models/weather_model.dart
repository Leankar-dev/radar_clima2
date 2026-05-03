import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_model.freezed.dart';

@freezed
abstract class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required String cityName,
    required String country,
    required double temperature,
    required double feelsLike,
    required int humidity,
    required double windSpeed,
    required String description,
    required String iconUrl,
  }) = _WeatherModel;
}
