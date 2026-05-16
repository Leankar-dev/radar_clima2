// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'geocoding_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GeocodingDto {

 String get name; String? get state; String get country; double get lat; double get lon;
/// Create a copy of GeocodingDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeocodingDtoCopyWith<GeocodingDto> get copyWith => _$GeocodingDtoCopyWithImpl<GeocodingDto>(this as GeocodingDto, _$identity);

  /// Serializes this GeocodingDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeocodingDto&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,state,country,lat,lon);

@override
String toString() {
  return 'GeocodingDto(name: $name, state: $state, country: $country, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class $GeocodingDtoCopyWith<$Res>  {
  factory $GeocodingDtoCopyWith(GeocodingDto value, $Res Function(GeocodingDto) _then) = _$GeocodingDtoCopyWithImpl;
@useResult
$Res call({
 String name, String? state, String country, double lat, double lon
});




}
/// @nodoc
class _$GeocodingDtoCopyWithImpl<$Res>
    implements $GeocodingDtoCopyWith<$Res> {
  _$GeocodingDtoCopyWithImpl(this._self, this._then);

  final GeocodingDto _self;
  final $Res Function(GeocodingDto) _then;

/// Create a copy of GeocodingDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? state = freezed,Object? country = null,Object? lat = null,Object? lon = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [GeocodingDto].
extension GeocodingDtoPatterns on GeocodingDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeocodingDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeocodingDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeocodingDto value)  $default,){
final _that = this;
switch (_that) {
case _GeocodingDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeocodingDto value)?  $default,){
final _that = this;
switch (_that) {
case _GeocodingDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String? state,  String country,  double lat,  double lon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeocodingDto() when $default != null:
return $default(_that.name,_that.state,_that.country,_that.lat,_that.lon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String? state,  String country,  double lat,  double lon)  $default,) {final _that = this;
switch (_that) {
case _GeocodingDto():
return $default(_that.name,_that.state,_that.country,_that.lat,_that.lon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String? state,  String country,  double lat,  double lon)?  $default,) {final _that = this;
switch (_that) {
case _GeocodingDto() when $default != null:
return $default(_that.name,_that.state,_that.country,_that.lat,_that.lon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _GeocodingDto implements GeocodingDto {
  const _GeocodingDto({required this.name, this.state, required this.country, required this.lat, required this.lon});
  factory _GeocodingDto.fromJson(Map<String, dynamic> json) => _$GeocodingDtoFromJson(json);

@override final  String name;
@override final  String? state;
@override final  String country;
@override final  double lat;
@override final  double lon;

/// Create a copy of GeocodingDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeocodingDtoCopyWith<_GeocodingDto> get copyWith => __$GeocodingDtoCopyWithImpl<_GeocodingDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GeocodingDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeocodingDto&&(identical(other.name, name) || other.name == name)&&(identical(other.state, state) || other.state == state)&&(identical(other.country, country) || other.country == country)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lon, lon) || other.lon == lon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,state,country,lat,lon);

@override
String toString() {
  return 'GeocodingDto(name: $name, state: $state, country: $country, lat: $lat, lon: $lon)';
}


}

/// @nodoc
abstract mixin class _$GeocodingDtoCopyWith<$Res> implements $GeocodingDtoCopyWith<$Res> {
  factory _$GeocodingDtoCopyWith(_GeocodingDto value, $Res Function(_GeocodingDto) _then) = __$GeocodingDtoCopyWithImpl;
@override @useResult
$Res call({
 String name, String? state, String country, double lat, double lon
});




}
/// @nodoc
class __$GeocodingDtoCopyWithImpl<$Res>
    implements _$GeocodingDtoCopyWith<$Res> {
  __$GeocodingDtoCopyWithImpl(this._self, this._then);

  final _GeocodingDto _self;
  final $Res Function(_GeocodingDto) _then;

/// Create a copy of GeocodingDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? state = freezed,Object? country = null,Object? lat = null,Object? lon = null,}) {
  return _then(_GeocodingDto(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,country: null == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lon: null == lon ? _self.lon : lon // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
