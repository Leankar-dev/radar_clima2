import 'package:radar_clima2/core/network/connectivity_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'connectivity_service_provider.g.dart';

@riverpod
ConnectivityService connectivityService(Ref ref) {
  return ConnectivityService();
}
