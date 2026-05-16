import 'package:freezed_annotation/freezed_annotation.dart';

part 'geocoding_model.freezed.dart';

@freezed
abstract class GeocodingModel with _$GeocodingModel {
  const factory GeocodingModel({
    required String name,
    String? state,
    required String country,
    required double lat,
    required double lon,
  }) = _GeocodingModel;
}
