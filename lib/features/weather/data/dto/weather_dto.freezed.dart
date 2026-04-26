// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$WeatherDto {

 MainDto get main; List<WeatherDescriptionDto> get weather; String get name;
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDtoCopyWith<WeatherDto> get copyWith => _$WeatherDtoCopyWithImpl<WeatherDto>(this as WeatherDto, _$identity);

  /// Serializes this WeatherDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDto&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other.weather, weather)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,const DeepCollectionEquality().hash(weather),name);

@override
String toString() {
  return 'WeatherDto(main: $main, weather: $weather, name: $name)';
}


}

/// @nodoc
abstract mixin class $WeatherDtoCopyWith<$Res>  {
  factory $WeatherDtoCopyWith(WeatherDto value, $Res Function(WeatherDto) _then) = _$WeatherDtoCopyWithImpl;
@useResult
$Res call({
 MainDto main, List<WeatherDescriptionDto> weather, String name
});


$MainDtoCopyWith<$Res> get main;

}
/// @nodoc
class _$WeatherDtoCopyWithImpl<$Res>
    implements $WeatherDtoCopyWith<$Res> {
  _$WeatherDtoCopyWithImpl(this._self, this._then);

  final WeatherDto _self;
  final $Res Function(WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? main = null,Object? weather = null,Object? name = null,}) {
  return _then(_self.copyWith(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as MainDto,weather: null == weather ? _self.weather : weather // ignore: cast_nullable_to_non_nullable
as List<WeatherDescriptionDto>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainDtoCopyWith<$Res> get main {
  
  return $MainDtoCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}
}


/// Adds pattern-matching-related methods to [WeatherDto].
extension WeatherDtoPatterns on WeatherDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDto value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDto value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MainDto main,  List<WeatherDescriptionDto> weather,  String name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.main,_that.weather,_that.name);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MainDto main,  List<WeatherDescriptionDto> weather,  String name)  $default,) {final _that = this;
switch (_that) {
case _WeatherDto():
return $default(_that.main,_that.weather,_that.name);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MainDto main,  List<WeatherDescriptionDto> weather,  String name)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDto() when $default != null:
return $default(_that.main,_that.weather,_that.name);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDto implements WeatherDto {
  const _WeatherDto({required this.main, required final  List<WeatherDescriptionDto> weather, required this.name}): _weather = weather;
  factory _WeatherDto.fromJson(Map<String, dynamic> json) => _$WeatherDtoFromJson(json);

@override final  MainDto main;
 final  List<WeatherDescriptionDto> _weather;
@override List<WeatherDescriptionDto> get weather {
  if (_weather is EqualUnmodifiableListView) return _weather;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weather);
}

@override final  String name;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDtoCopyWith<_WeatherDto> get copyWith => __$WeatherDtoCopyWithImpl<_WeatherDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDto&&(identical(other.main, main) || other.main == main)&&const DeepCollectionEquality().equals(other._weather, _weather)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,main,const DeepCollectionEquality().hash(_weather),name);

@override
String toString() {
  return 'WeatherDto(main: $main, weather: $weather, name: $name)';
}


}

/// @nodoc
abstract mixin class _$WeatherDtoCopyWith<$Res> implements $WeatherDtoCopyWith<$Res> {
  factory _$WeatherDtoCopyWith(_WeatherDto value, $Res Function(_WeatherDto) _then) = __$WeatherDtoCopyWithImpl;
@override @useResult
$Res call({
 MainDto main, List<WeatherDescriptionDto> weather, String name
});


@override $MainDtoCopyWith<$Res> get main;

}
/// @nodoc
class __$WeatherDtoCopyWithImpl<$Res>
    implements _$WeatherDtoCopyWith<$Res> {
  __$WeatherDtoCopyWithImpl(this._self, this._then);

  final _WeatherDto _self;
  final $Res Function(_WeatherDto) _then;

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? main = null,Object? weather = null,Object? name = null,}) {
  return _then(_WeatherDto(
main: null == main ? _self.main : main // ignore: cast_nullable_to_non_nullable
as MainDto,weather: null == weather ? _self._weather : weather // ignore: cast_nullable_to_non_nullable
as List<WeatherDescriptionDto>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of WeatherDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainDtoCopyWith<$Res> get main {
  
  return $MainDtoCopyWith<$Res>(_self.main, (value) {
    return _then(_self.copyWith(main: value));
  });
}
}


/// @nodoc
mixin _$MainDto {

 double get temp;@JsonKey(name: 'feels_like') double get feelsLike; int get humidity;
/// Create a copy of MainDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainDtoCopyWith<MainDto> get copyWith => _$MainDtoCopyWithImpl<MainDto>(this as MainDto, _$identity);

  /// Serializes this MainDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainDto&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,humidity);

@override
String toString() {
  return 'MainDto(temp: $temp, feelsLike: $feelsLike, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $MainDtoCopyWith<$Res>  {
  factory $MainDtoCopyWith(MainDto value, $Res Function(MainDto) _then) = _$MainDtoCopyWithImpl;
@useResult
$Res call({
 double temp,@JsonKey(name: 'feels_like') double feelsLike, int humidity
});




}
/// @nodoc
class _$MainDtoCopyWithImpl<$Res>
    implements $MainDtoCopyWith<$Res> {
  _$MainDtoCopyWithImpl(this._self, this._then);

  final MainDto _self;
  final $Res Function(MainDto) _then;

/// Create a copy of MainDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temp = null,Object? feelsLike = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MainDto].
extension MainDtoPatterns on MainDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MainDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MainDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MainDto value)  $default,){
final _that = this;
switch (_that) {
case _MainDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MainDto value)?  $default,){
final _that = this;
switch (_that) {
case _MainDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double temp, @JsonKey(name: 'feels_like')  double feelsLike,  int humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MainDto() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.humidity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double temp, @JsonKey(name: 'feels_like')  double feelsLike,  int humidity)  $default,) {final _that = this;
switch (_that) {
case _MainDto():
return $default(_that.temp,_that.feelsLike,_that.humidity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double temp, @JsonKey(name: 'feels_like')  double feelsLike,  int humidity)?  $default,) {final _that = this;
switch (_that) {
case _MainDto() when $default != null:
return $default(_that.temp,_that.feelsLike,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MainDto implements MainDto {
  const _MainDto({required this.temp, @JsonKey(name: 'feels_like') required this.feelsLike, required this.humidity});
  factory _MainDto.fromJson(Map<String, dynamic> json) => _$MainDtoFromJson(json);

@override final  double temp;
@override@JsonKey(name: 'feels_like') final  double feelsLike;
@override final  int humidity;

/// Create a copy of MainDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainDtoCopyWith<_MainDto> get copyWith => __$MainDtoCopyWithImpl<_MainDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainDto&&(identical(other.temp, temp) || other.temp == temp)&&(identical(other.feelsLike, feelsLike) || other.feelsLike == feelsLike)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temp,feelsLike,humidity);

@override
String toString() {
  return 'MainDto(temp: $temp, feelsLike: $feelsLike, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$MainDtoCopyWith<$Res> implements $MainDtoCopyWith<$Res> {
  factory _$MainDtoCopyWith(_MainDto value, $Res Function(_MainDto) _then) = __$MainDtoCopyWithImpl;
@override @useResult
$Res call({
 double temp,@JsonKey(name: 'feels_like') double feelsLike, int humidity
});




}
/// @nodoc
class __$MainDtoCopyWithImpl<$Res>
    implements _$MainDtoCopyWith<$Res> {
  __$MainDtoCopyWithImpl(this._self, this._then);

  final _MainDto _self;
  final $Res Function(_MainDto) _then;

/// Create a copy of MainDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temp = null,Object? feelsLike = null,Object? humidity = null,}) {
  return _then(_MainDto(
temp: null == temp ? _self.temp : temp // ignore: cast_nullable_to_non_nullable
as double,feelsLike: null == feelsLike ? _self.feelsLike : feelsLike // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$WeatherDescriptionDto {

 String get description; String get icon;
/// Create a copy of WeatherDescriptionDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDescriptionDtoCopyWith<WeatherDescriptionDto> get copyWith => _$WeatherDescriptionDtoCopyWithImpl<WeatherDescriptionDto>(this as WeatherDescriptionDto, _$identity);

  /// Serializes this WeatherDescriptionDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDescriptionDto&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,icon);

@override
String toString() {
  return 'WeatherDescriptionDto(description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $WeatherDescriptionDtoCopyWith<$Res>  {
  factory $WeatherDescriptionDtoCopyWith(WeatherDescriptionDto value, $Res Function(WeatherDescriptionDto) _then) = _$WeatherDescriptionDtoCopyWithImpl;
@useResult
$Res call({
 String description, String icon
});




}
/// @nodoc
class _$WeatherDescriptionDtoCopyWithImpl<$Res>
    implements $WeatherDescriptionDtoCopyWith<$Res> {
  _$WeatherDescriptionDtoCopyWithImpl(this._self, this._then);

  final WeatherDescriptionDto _self;
  final $Res Function(WeatherDescriptionDto) _then;

/// Create a copy of WeatherDescriptionDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,Object? icon = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [WeatherDescriptionDto].
extension WeatherDescriptionDtoPatterns on WeatherDescriptionDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WeatherDescriptionDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WeatherDescriptionDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WeatherDescriptionDto value)  $default,){
final _that = this;
switch (_that) {
case _WeatherDescriptionDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WeatherDescriptionDto value)?  $default,){
final _that = this;
switch (_that) {
case _WeatherDescriptionDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String description,  String icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WeatherDescriptionDto() when $default != null:
return $default(_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String description,  String icon)  $default,) {final _that = this;
switch (_that) {
case _WeatherDescriptionDto():
return $default(_that.description,_that.icon);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String description,  String icon)?  $default,) {final _that = this;
switch (_that) {
case _WeatherDescriptionDto() when $default != null:
return $default(_that.description,_that.icon);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WeatherDescriptionDto implements WeatherDescriptionDto {
  const _WeatherDescriptionDto({required this.description, required this.icon});
  factory _WeatherDescriptionDto.fromJson(Map<String, dynamic> json) => _$WeatherDescriptionDtoFromJson(json);

@override final  String description;
@override final  String icon;

/// Create a copy of WeatherDescriptionDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDescriptionDtoCopyWith<_WeatherDescriptionDto> get copyWith => __$WeatherDescriptionDtoCopyWithImpl<_WeatherDescriptionDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDescriptionDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDescriptionDto&&(identical(other.description, description) || other.description == description)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description,icon);

@override
String toString() {
  return 'WeatherDescriptionDto(description: $description, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$WeatherDescriptionDtoCopyWith<$Res> implements $WeatherDescriptionDtoCopyWith<$Res> {
  factory _$WeatherDescriptionDtoCopyWith(_WeatherDescriptionDto value, $Res Function(_WeatherDescriptionDto) _then) = __$WeatherDescriptionDtoCopyWithImpl;
@override @useResult
$Res call({
 String description, String icon
});




}
/// @nodoc
class __$WeatherDescriptionDtoCopyWithImpl<$Res>
    implements _$WeatherDescriptionDtoCopyWith<$Res> {
  __$WeatherDescriptionDtoCopyWithImpl(this._self, this._then);

  final _WeatherDescriptionDto _self;
  final $Res Function(_WeatherDescriptionDto) _then;

/// Create a copy of WeatherDescriptionDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,Object? icon = null,}) {
  return _then(_WeatherDescriptionDto(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
