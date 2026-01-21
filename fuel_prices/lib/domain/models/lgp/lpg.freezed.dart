// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lpg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Lpg {

 String get lpg; String get marka;
/// Create a copy of Lpg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LpgCopyWith<Lpg> get copyWith => _$LpgCopyWithImpl<Lpg>(this as Lpg, _$identity);

  /// Serializes this Lpg to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Lpg&&(identical(other.lpg, lpg) || other.lpg == lpg)&&(identical(other.marka, marka) || other.marka == marka));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lpg,marka);

@override
String toString() {
  return 'Lpg(lpg: $lpg, marka: $marka)';
}


}

/// @nodoc
abstract mixin class $LpgCopyWith<$Res>  {
  factory $LpgCopyWith(Lpg value, $Res Function(Lpg) _then) = _$LpgCopyWithImpl;
@useResult
$Res call({
 String lpg, String marka
});




}
/// @nodoc
class _$LpgCopyWithImpl<$Res>
    implements $LpgCopyWith<$Res> {
  _$LpgCopyWithImpl(this._self, this._then);

  final Lpg _self;
  final $Res Function(Lpg) _then;

/// Create a copy of Lpg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lpg = null,Object? marka = null,}) {
  return _then(_self.copyWith(
lpg: null == lpg ? _self.lpg : lpg // ignore: cast_nullable_to_non_nullable
as String,marka: null == marka ? _self.marka : marka // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Lpg].
extension LpgPatterns on Lpg {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Lpg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Lpg() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Lpg value)  $default,){
final _that = this;
switch (_that) {
case _Lpg():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Lpg value)?  $default,){
final _that = this;
switch (_that) {
case _Lpg() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String lpg,  String marka)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Lpg() when $default != null:
return $default(_that.lpg,_that.marka);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String lpg,  String marka)  $default,) {final _that = this;
switch (_that) {
case _Lpg():
return $default(_that.lpg,_that.marka);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String lpg,  String marka)?  $default,) {final _that = this;
switch (_that) {
case _Lpg() when $default != null:
return $default(_that.lpg,_that.marka);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Lpg implements Lpg {
  const _Lpg({required this.lpg, required this.marka});
  factory _Lpg.fromJson(Map<String, dynamic> json) => _$LpgFromJson(json);

@override final  String lpg;
@override final  String marka;

/// Create a copy of Lpg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LpgCopyWith<_Lpg> get copyWith => __$LpgCopyWithImpl<_Lpg>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LpgToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Lpg&&(identical(other.lpg, lpg) || other.lpg == lpg)&&(identical(other.marka, marka) || other.marka == marka));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,lpg,marka);

@override
String toString() {
  return 'Lpg(lpg: $lpg, marka: $marka)';
}


}

/// @nodoc
abstract mixin class _$LpgCopyWith<$Res> implements $LpgCopyWith<$Res> {
  factory _$LpgCopyWith(_Lpg value, $Res Function(_Lpg) _then) = __$LpgCopyWithImpl;
@override @useResult
$Res call({
 String lpg, String marka
});




}
/// @nodoc
class __$LpgCopyWithImpl<$Res>
    implements _$LpgCopyWith<$Res> {
  __$LpgCopyWithImpl(this._self, this._then);

  final _Lpg _self;
  final $Res Function(_Lpg) _then;

/// Create a copy of Lpg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lpg = null,Object? marka = null,}) {
  return _then(_Lpg(
lpg: null == lpg ? _self.lpg : lpg // ignore: cast_nullable_to_non_nullable
as String,marka: null == marka ? _self.marka : marka // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
