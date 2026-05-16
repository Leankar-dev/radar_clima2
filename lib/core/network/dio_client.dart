import 'package:dio/dio.dart';
import 'package:radar_clima2/core/constants/api_constants.dart';
import 'package:radar_clima2/core/network/api_interceptors.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_client.g.dart';

@riverpod
Dio dio(Ref ref) {
  final options = BaseOptions(
    baseUrl: ApiConstants.baseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );
  final dio = Dio(options);
  dio.interceptors.add(ApiInterceptor());
  return dio;
}

@riverpod
Dio geoDio(Ref ref) {
  final options = BaseOptions(
    baseUrl: ApiConstants.geoBaseUrl,
    connectTimeout: const Duration(seconds: 5),
    receiveTimeout: const Duration(seconds: 3),
  );
  final instance = Dio(options);
  instance.interceptors.add(ApiInterceptor());
  return instance;
}
