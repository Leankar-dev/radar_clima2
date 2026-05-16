import 'package:radar_clima2/core/network/dio_client.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:radar_clima2/features/weather/domain/repositories/weather_repository.dart';
import 'weather_repository_impl.dart';

part 'weather_repository_provider.g.dart';

@riverpod
WeatherRepository weatherRepository(Ref ref) {
  final dio = ref.watch(dioProvider);
  // Retornamos a implementação concreta, mas o tipo do Provider é a Interface
  return WeatherRepositoryImpl(dio);
}
