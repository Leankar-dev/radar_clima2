import 'package:radar_clima2/core/constants/app_strings.dart';

abstract class Failure implements Exception {
  final String message;
  const Failure(this.message);

  @override
  String toString() => message;
}

class NetworkFailure extends Failure {
  const NetworkFailure() : super(AppStrings.networkError);
}

class CityNotFoundException extends Failure {
  const CityNotFoundException() : super(AppStrings.cityNotFoundError);
}

class ApiKeyInvalidFailure extends Failure {
  const ApiKeyInvalidFailure() : super(AppStrings.apiKeyInvalidError);
}

class ServerFailure extends Failure {
  const ServerFailure() : super(AppStrings.serverError);
}

class TimeoutFailure extends Failure {
  const TimeoutFailure() : super(AppStrings.timeoutError);
}
