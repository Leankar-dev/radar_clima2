// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fetch_weather_by_coords_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(fetchWeatherByCoordsUseCase)
final fetchWeatherByCoordsUseCaseProvider =
    FetchWeatherByCoordsUseCaseProvider._();

final class FetchWeatherByCoordsUseCaseProvider
    extends
        $FunctionalProvider<
          FetchWeatherByCoordsUseCase,
          FetchWeatherByCoordsUseCase,
          FetchWeatherByCoordsUseCase
        >
    with $Provider<FetchWeatherByCoordsUseCase> {
  FetchWeatherByCoordsUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fetchWeatherByCoordsUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fetchWeatherByCoordsUseCaseHash();

  @$internal
  @override
  $ProviderElement<FetchWeatherByCoordsUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  FetchWeatherByCoordsUseCase create(Ref ref) {
    return fetchWeatherByCoordsUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FetchWeatherByCoordsUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FetchWeatherByCoordsUseCase>(value),
    );
  }
}

String _$fetchWeatherByCoordsUseCaseHash() =>
    r'a1aff36fb63eb836ec494b787a333d6c687378f8';
