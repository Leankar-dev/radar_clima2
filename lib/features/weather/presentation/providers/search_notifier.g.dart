// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SearchNotifier)
final searchProvider = SearchNotifierProvider._();

final class SearchNotifierProvider
    extends
        $NotifierProvider<SearchNotifier, AsyncValue<List<GeocodingModel>?>> {
  SearchNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchNotifierHash();

  @$internal
  @override
  SearchNotifier create() => SearchNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<GeocodingModel>?> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<GeocodingModel>?>>(
        value,
      ),
    );
  }
}

String _$searchNotifierHash() => r'7185ab2151f4a200825bebf872ba4fb1adb42200';

abstract class _$SearchNotifier
    extends $Notifier<AsyncValue<List<GeocodingModel>?>> {
  AsyncValue<List<GeocodingModel>?> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<GeocodingModel>?>,
              AsyncValue<List<GeocodingModel>?>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<GeocodingModel>?>,
                AsyncValue<List<GeocodingModel>?>
              >,
              AsyncValue<List<GeocodingModel>?>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
