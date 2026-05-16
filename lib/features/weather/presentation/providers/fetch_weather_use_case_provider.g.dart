// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_weather_use_case_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchWeatherUseCase)
final fetchWeatherUseCaseProvider = FetchWeatherUseCaseProvider._();

final class FetchWeatherUseCaseProvider
    extends
        $FunctionalProvider<
          FetchWeatherUseCase,
          FetchWeatherUseCase,
          FetchWeatherUseCase
        >
    with $Provider<FetchWeatherUseCase> {
  FetchWeatherUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchWeatherUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchWeatherUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchWeatherUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchWeatherUseCase create(Ref ref) {
    return fetchWeatherUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchWeatherUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchWeatherUseCase>(value),
    );
  }
}

String _$fetchWeatherUseCaseHash() =>
    r'dbbee23a4fd25b7d495d0051d48d8e1359f48054';
