// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeatherNotifier)
final weatherProvider = WeatherNotifierProvider._();

final class WeatherNotifierProvider
    extends $AsyncNotifierProvider<WeatherNotifier, WeatherModel> {
  WeatherNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weatherProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weatherNotifierHash();

  @$internal
  @override
  WeatherNotifier create() => WeatherNotifier();
}

String _$weatherNotifierHash() => r'795d2146bd8c7530051817777f9858b22b379a72';

abstract class _$WeatherNotifier extends $AsyncNotifier<WeatherModel> {
  FutureOr<WeatherModel> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref = this.ref as $Ref<AsyncValue<WeatherModel>, WeatherModel>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<WeatherModel>, WeatherModel>,
              AsyncValue<WeatherModel>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
