// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_city_usecase_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(searchCityUseCase)
final searchCityUseCaseProvider = SearchCityUseCaseProvider._();

final class SearchCityUseCaseProvider
    extends
        $FunctionalProvider<
          SearchCityUseCase,
          SearchCityUseCase,
          SearchCityUseCase
        >
    with $Provider<SearchCityUseCase> {
  SearchCityUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'searchCityUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$searchCityUseCaseHash();

  @$internal
  @override
  $ProviderElement<SearchCityUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  SearchCityUseCase create(Ref ref) {
    return searchCityUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SearchCityUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SearchCityUseCase>(value),
    );
  }
}

String _$searchCityUseCaseHash() => r'e7e888a20380c407692bb0d647bc353ad8dcab0a';
