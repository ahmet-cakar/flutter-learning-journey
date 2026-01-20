// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'features/weather/models/daily_forecast.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DailyForecast {

 String get date; String get day; String get description; String get status; String get icon;@JsonKey(fromJson: _toDouble) double get degree;@JsonKey(fromJson: _toDouble) double get min;@JsonKey(fromJson: _toDouble) double get max;@JsonKey(fromJson: _toDouble) double get night;@JsonKey(fromJson: _toDouble) double get humidity;
/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DailyForecastCopyWith<DailyForecast> get copyWith => _$DailyForecastCopyWithImpl<DailyForecast>(this as DailyForecast, _$identity);

  /// Serializes this DailyForecast to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DailyForecast&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.night, night) || other.night == night)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,day,description,status,icon,degree,min,max,night,humidity);

@override
String toString() {
  return 'DailyForecast(date: $date, day: $day, description: $description, status: $status, icon: $icon, degree: $degree, min: $min, max: $max, night: $night, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class $DailyForecastCopyWith<$Res>  {
  factory $DailyForecastCopyWith(DailyForecast value, $Res Function(DailyForecast) _then) = _$DailyForecastCopyWithImpl;
@useResult
$Res call({
 String date, String day, String description, String status, String icon,@JsonKey(fromJson: _toDouble) double degree,@JsonKey(fromJson: _toDouble) double min,@JsonKey(fromJson: _toDouble) double max,@JsonKey(fromJson: _toDouble) double night,@JsonKey(fromJson: _toDouble) double humidity
});




}
/// @nodoc
class _$DailyForecastCopyWithImpl<$Res>
    implements $DailyForecastCopyWith<$Res> {
  _$DailyForecastCopyWithImpl(this._self, this._then);

  final DailyForecast _self;
  final $Res Function(DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? date = null,Object? day = null,Object? description = null,Object? status = null,Object? icon = null,Object? degree = null,Object? min = null,Object? max = null,Object? night = null,Object? humidity = null,}) {
  return _then(_self.copyWith(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [DailyForecast].
extension DailyForecastPatterns on DailyForecast {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DailyForecast value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DailyForecast value)  $default,){
final _that = this;
switch (_that) {
case _DailyForecast():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DailyForecast value)?  $default,){
final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String date,  String day,  String description,  String status,  String icon, @JsonKey(fromJson: _toDouble)  double degree, @JsonKey(fromJson: _toDouble)  double min, @JsonKey(fromJson: _toDouble)  double max, @JsonKey(fromJson: _toDouble)  double night, @JsonKey(fromJson: _toDouble)  double humidity)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
return $default(_that.date,_that.day,_that.description,_that.status,_that.icon,_that.degree,_that.min,_that.max,_that.night,_that.humidity);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String date,  String day,  String description,  String status,  String icon, @JsonKey(fromJson: _toDouble)  double degree, @JsonKey(fromJson: _toDouble)  double min, @JsonKey(fromJson: _toDouble)  double max, @JsonKey(fromJson: _toDouble)  double night, @JsonKey(fromJson: _toDouble)  double humidity)  $default,) {final _that = this;
switch (_that) {
case _DailyForecast():
return $default(_that.date,_that.day,_that.description,_that.status,_that.icon,_that.degree,_that.min,_that.max,_that.night,_that.humidity);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String date,  String day,  String description,  String status,  String icon, @JsonKey(fromJson: _toDouble)  double degree, @JsonKey(fromJson: _toDouble)  double min, @JsonKey(fromJson: _toDouble)  double max, @JsonKey(fromJson: _toDouble)  double night, @JsonKey(fromJson: _toDouble)  double humidity)?  $default,) {final _that = this;
switch (_that) {
case _DailyForecast() when $default != null:
return $default(_that.date,_that.day,_that.description,_that.status,_that.icon,_that.degree,_that.min,_that.max,_that.night,_that.humidity);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DailyForecast implements DailyForecast {
  const _DailyForecast({required this.date, required this.day, required this.description, required this.status, required this.icon, @JsonKey(fromJson: _toDouble) required this.degree, @JsonKey(fromJson: _toDouble) required this.min, @JsonKey(fromJson: _toDouble) required this.max, @JsonKey(fromJson: _toDouble) required this.night, @JsonKey(fromJson: _toDouble) required this.humidity});
  factory _DailyForecast.fromJson(Map<String, dynamic> json) => _$DailyForecastFromJson(json);

@override final  String date;
@override final  String day;
@override final  String description;
@override final  String status;
@override final  String icon;
@override@JsonKey(fromJson: _toDouble) final  double degree;
@override@JsonKey(fromJson: _toDouble) final  double min;
@override@JsonKey(fromJson: _toDouble) final  double max;
@override@JsonKey(fromJson: _toDouble) final  double night;
@override@JsonKey(fromJson: _toDouble) final  double humidity;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DailyForecastCopyWith<_DailyForecast> get copyWith => __$DailyForecastCopyWithImpl<_DailyForecast>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DailyForecastToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DailyForecast&&(identical(other.date, date) || other.date == date)&&(identical(other.day, day) || other.day == day)&&(identical(other.description, description) || other.description == description)&&(identical(other.status, status) || other.status == status)&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.degree, degree) || other.degree == degree)&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max)&&(identical(other.night, night) || other.night == night)&&(identical(other.humidity, humidity) || other.humidity == humidity));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,date,day,description,status,icon,degree,min,max,night,humidity);

@override
String toString() {
  return 'DailyForecast(date: $date, day: $day, description: $description, status: $status, icon: $icon, degree: $degree, min: $min, max: $max, night: $night, humidity: $humidity)';
}


}

/// @nodoc
abstract mixin class _$DailyForecastCopyWith<$Res> implements $DailyForecastCopyWith<$Res> {
  factory _$DailyForecastCopyWith(_DailyForecast value, $Res Function(_DailyForecast) _then) = __$DailyForecastCopyWithImpl;
@override @useResult
$Res call({
 String date, String day, String description, String status, String icon,@JsonKey(fromJson: _toDouble) double degree,@JsonKey(fromJson: _toDouble) double min,@JsonKey(fromJson: _toDouble) double max,@JsonKey(fromJson: _toDouble) double night,@JsonKey(fromJson: _toDouble) double humidity
});




}
/// @nodoc
class __$DailyForecastCopyWithImpl<$Res>
    implements _$DailyForecastCopyWith<$Res> {
  __$DailyForecastCopyWithImpl(this._self, this._then);

  final _DailyForecast _self;
  final $Res Function(_DailyForecast) _then;

/// Create a copy of DailyForecast
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? date = null,Object? day = null,Object? description = null,Object? status = null,Object? icon = null,Object? degree = null,Object? min = null,Object? max = null,Object? night = null,Object? humidity = null,}) {
  return _then(_DailyForecast(
date: null == date ? _self.date : date // ignore: cast_nullable_to_non_nullable
as String,day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,icon: null == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String,degree: null == degree ? _self.degree : degree // ignore: cast_nullable_to_non_nullable
as double,min: null == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as double,max: null == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as double,night: null == night ? _self.night : night // ignore: cast_nullable_to_non_nullable
as double,humidity: null == humidity ? _self.humidity : humidity // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
