import 'package:radar_clima2/features/weather/data/repositories/geocoding_repository_provider.dart';
import 'package:radar_clima2/features/weather/domain/usecases/search_city_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_city_usecase_provider.g.dart';

@riverpod
SearchCityUseCase searchCityUseCase(Ref ref) {
  return SearchCityUseCase(ref.watch(geocodingRepositoryProvider));
}
