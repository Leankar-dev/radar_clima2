import 'package:radar_clima2/features/weather/domain/models/geocoding_model.dart';
import 'package:radar_clima2/features/weather/presentation/providers/search_city_usecase_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'search_notifier.g.dart';

@riverpod
class SearchNotifier extends _$SearchNotifier {
  @override
  AsyncValue<List<GeocodingModel>?> build() => const AsyncData(null);

  Future<void> searchCity(String cityName) async {
    state = const AsyncLoading();
    state = await AsyncValue.guard(
      () => ref.read(searchCityUseCaseProvider)(cityName),
    );
  }
}
