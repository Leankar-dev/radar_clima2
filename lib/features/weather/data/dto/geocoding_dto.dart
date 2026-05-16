import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding_dto.freezed.dart';
part 'geocoding_dto.g.dart';

@freezed
abstract class GeocodingDto with _$GeocodingDto {
  const factory GeocodingDto({
    required String name,
    String? state,
    required String country,
    required double lat,
    required double lon,
  }) = _GeocodingDto;

  factory GeocodingDto.fromJson(Map<String, dynamic> json) =>
      _$GeocodingDtoFromJson(json);
}
