// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WeatherDto _$WeatherDtoFromJson(Map<String, dynamic> json) => _WeatherDto(
  main: MainDto.fromJson(json['main'] as Map<String, dynamic>),
  weather: (json['weather'] as List<dynamic>)
      .map((e) => WeatherDescriptionDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  name: json['name'] as String,
);

Map<String, dynamic> _$WeatherDtoToJson(_WeatherDto instance) =>
    <String, dynamic>{
      'main': instance.main,
      'weather': instance.weather,
      'name': instance.name,
    };

_MainDto _$MainDtoFromJson(Map<String, dynamic> json) => _MainDto(
  temp: (json['temp'] as num).toDouble(),
  feelsLike: (json['feels_like'] as num).toDouble(),
  humidity: (json['humidity'] as num).toInt(),
);

Map<String, dynamic> _$MainDtoToJson(_MainDto instance) => <String, dynamic>{
  'temp': instance.temp,
  'feels_like': instance.feelsLike,
  'humidity': instance.humidity,
};

_WeatherDescriptionDto _$WeatherDescriptionDtoFromJson(
  Map<String, dynamic> json,
) => _WeatherDescriptionDto(
  description: json['description'] as String,
  icon: json['icon'] as String,
);

Map<String, dynamic> _$WeatherDescriptionDtoToJson(
  _WeatherDescriptionDto instance,
) => <String, dynamic>{
  'description': instance.description,
  'icon': instance.icon,
};
