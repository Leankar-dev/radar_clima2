import 'package:radar_clima2/core/errors/failure.dart';
import 'package:radar_clima2/features/weather/domain/repositories/geocoding_repository.dart';
import 'package:radar_clima2/features/weather/domain/models/geocoding_model.dart';

class SearchCityUseCase {
  final GeocodingRepository _repository;

  SearchCityUseCase(this._repository);

  Future<List<GeocodingModel>> call(String cityName) async {
    final results = await _repository.searchCity(cityName);
    if (results.isEmpty) throw const CityNotFoundException();
    return results;
  }
}
