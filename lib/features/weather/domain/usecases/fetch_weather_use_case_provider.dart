import 'package:radar_clima2/features/weather/data/repositories/weather_repository_provider.dart';
import 'package:radar_clima2/features/weather/domain/usecases/fetch_weather_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_weather_use_case_provider.g.dart';

@riverpod
FetchWeatherUseCase fetchWeatherUseCase(Ref ref) {
  return FetchWeatherUseCase(ref.watch(weatherRepositoryProvider));
}
