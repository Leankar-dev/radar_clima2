// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'geocoding_repository_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(geocodingRepository)
final geocodingRepositoryProvider = GeocodingRepositoryProvider._();

final class GeocodingRepositoryProvider
    extends
        $FunctionalProvider<
          GeocodingRepository,
          GeocodingRepository,
          GeocodingRepository
        >
    with $Provider<GeocodingRepository> {
  GeocodingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'geocodingRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$geocodingRepositoryHash();

  @$internal
  @override
  $ProviderElement<GeocodingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GeocodingRepository create(Ref ref) {
    return geocodingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeocodingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeocodingRepository>(value),
    );
  }
}

String _$geocodingRepositoryHash() =>
    r'6caf4144123104e7b426476fc220fde5c5174b2a';
