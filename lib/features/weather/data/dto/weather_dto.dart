import 'package:freezed_annotation/freezed_annotation.dart';
part 'weather_dto.freezed.dart';
part 'weather_dto.g.dart';

@freezed
abstract class WeatherDto with _$WeatherDto {
  const factory WeatherDto({
    required MainDto main,
    required List<WeatherDescriptionDto> weather,
    required String name,
  }) = _WeatherDto;

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);
}

@freezed
abstract class MainDto with _$MainDto {
  const factory MainDto({
    required double temp,
    @JsonKey(name: 'feels_like') required double feelsLike,
    required int humidity,
  }) = _MainDto;

  factory MainDto.fromJson(Map<String, dynamic> json) =>
      _$MainDtoFromJson(json);
}

@freezed
abstract class WeatherDescriptionDto with _$WeatherDescriptionDto {
  const factory WeatherDescriptionDto({
    required String description,
    required String icon,
  }) = _WeatherDescriptionDto;

  factory WeatherDescriptionDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDescriptionDtoFromJson(json);
}
