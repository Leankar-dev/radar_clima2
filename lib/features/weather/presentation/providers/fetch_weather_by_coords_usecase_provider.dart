import 'package:radar_clima2/features/weather/data/repositories/weather_repository_provider.dart';
import 'package:radar_clima2/features/weather/domain/usecases/fetch_weather_by_coords_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'fetch_weather_by_coords_usecase_provider.g.dart';

@riverpod
FetchWeatherByCoordsUseCase fetchWeatherByCoordsUseCase(Ref ref) {
  return FetchWeatherByCoordsUseCase(ref.watch(weatherRepositoryProvider));
}
