import 'package:radar_clima2/core/network/dio_client.dart';
import 'package:radar_clima2/features/weather/domain/repositories/geocoding_repository.dart';
import 'package:radar_clima2/features/weather/data/repositories/geocoding_repository_impl.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'geocoding_repository_provider.g.dart';

@riverpod
GeocodingRepository geocodingRepository(Ref ref) {
  final dio = ref.watch(geoDioProvider);
  return GeocodingRepositoryImpl(dio);
}
