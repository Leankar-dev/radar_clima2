import 'package:radar_clima2/core/storage/preferences_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'preferences_service_provider.g.dart';

@riverpod
PreferencesService preferencesService(Ref ref) {
  return PreferencesService();
}
