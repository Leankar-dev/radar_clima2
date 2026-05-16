import 'package:radar_clima2/core/network/connectivity_service_provider.dart';
import 'package:radar_clima2/core/network/dio_client.dart';
import 'package:radar_clima2/features/weather/data/repositories/weather_repository_impl.dart';
import 'package:radar_clima2/features/weather/domain/repositories/weather_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository_provider.g.dart';

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  return WeatherRepositoryImpl(
    ref.watch(dioProvider),
    ref.watch(connectivityServiceProvider),
  );
}
