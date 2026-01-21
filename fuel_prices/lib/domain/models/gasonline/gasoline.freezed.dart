// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gasoline.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Gasoline {

 String get marka; double get dizel; String get katkili;
/// Create a copy of Gasoline
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GasolineCopyWith<Gasoline> get copyWith => _$GasolineCopyWithImpl<Gasoline>(this as Gasoline, _$identity);

  /// Serializes this Gasoline to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Gasoline&&(identical(other.marka, marka) || other.marka == marka)&&(identical(other.dizel, dizel) || other.dizel == dizel)&&(identical(other.katkili, katkili) || other.katkili == katkili));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marka,dizel,katkili);

@override
String toString() {
  return 'Gasoline(marka: $marka, dizel: $dizel, katkili: $katkili)';
}


}

/// @nodoc
abstract mixin class $GasolineCopyWith<$Res>  {
  factory $GasolineCopyWith(Gasoline value, $Res Function(Gasoline) _then) = _$GasolineCopyWithImpl;
@useResult
$Res call({
 String marka, double dizel, String katkili
});




}
/// @nodoc
class _$GasolineCopyWithImpl<$Res>
    implements $GasolineCopyWith<$Res> {
  _$GasolineCopyWithImpl(this._self, this._then);

  final Gasoline _self;
  final $Res Function(Gasoline) _then;

/// Create a copy of Gasoline
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? marka = null,Object? dizel = null,Object? katkili = null,}) {
  return _then(_self.copyWith(
marka: null == marka ? _self.marka : marka // ignore: cast_nullable_to_non_nullable
as String,dizel: null == dizel ? _self.dizel : dizel // ignore: cast_nullable_to_non_nullable
as double,katkili: null == katkili ? _self.katkili : katkili // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Gasoline].
extension GasolinePatterns on Gasoline {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Gasoline value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Gasoline() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Gasoline value)  $default,){
final _that = this;
switch (_that) {
case _Gasoline():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Gasoline value)?  $default,){
final _that = this;
switch (_that) {
case _Gasoline() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String marka,  double dizel,  String katkili)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Gasoline() when $default != null:
return $default(_that.marka,_that.dizel,_that.katkili);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String marka,  double dizel,  String katkili)  $default,) {final _that = this;
switch (_that) {
case _Gasoline():
return $default(_that.marka,_that.dizel,_that.katkili);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String marka,  double dizel,  String katkili)?  $default,) {final _that = this;
switch (_that) {
case _Gasoline() when $default != null:
return $default(_that.marka,_that.dizel,_that.katkili);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Gasoline implements Gasoline {
  const _Gasoline({required this.marka, required this.dizel, required this.katkili});
  factory _Gasoline.fromJson(Map<String, dynamic> json) => _$GasolineFromJson(json);

@override final  String marka;
@override final  double dizel;
@override final  String katkili;

/// Create a copy of Gasoline
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GasolineCopyWith<_Gasoline> get copyWith => __$GasolineCopyWithImpl<_Gasoline>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GasolineToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Gasoline&&(identical(other.marka, marka) || other.marka == marka)&&(identical(other.dizel, dizel) || other.dizel == dizel)&&(identical(other.katkili, katkili) || other.katkili == katkili));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marka,dizel,katkili);

@override
String toString() {
  return 'Gasoline(marka: $marka, dizel: $dizel, katkili: $katkili)';
}


}

/// @nodoc
abstract mixin class _$GasolineCopyWith<$Res> implements $GasolineCopyWith<$Res> {
  factory _$GasolineCopyWith(_Gasoline value, $Res Function(_Gasoline) _then) = __$GasolineCopyWithImpl;
@override @useResult
$Res call({
 String marka, double dizel, String katkili
});




}
/// @nodoc
class __$GasolineCopyWithImpl<$Res>
    implements _$GasolineCopyWith<$Res> {
  __$GasolineCopyWithImpl(this._self, this._then);

  final _Gasoline _self;
  final $Res Function(_Gasoline) _then;

/// Create a copy of Gasoline
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marka = null,Object? dizel = null,Object? katkili = null,}) {
  return _then(_Gasoline(
marka: null == marka ? _self.marka : marka // ignore: cast_nullable_to_non_nullable
as String,dizel: null == dizel ? _self.dizel : dizel // ignore: cast_nullable_to_non_nullable
as double,katkili: null == katkili ? _self.katkili : katkili // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
