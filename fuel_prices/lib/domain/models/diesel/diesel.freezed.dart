// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'diesel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Diesel {

 String get marka; double get dizel; String get katkili;
/// Create a copy of Diesel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DieselCopyWith<Diesel> get copyWith => _$DieselCopyWithImpl<Diesel>(this as Diesel, _$identity);

  /// Serializes this Diesel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Diesel&&(identical(other.marka, marka) || other.marka == marka)&&(identical(other.dizel, dizel) || other.dizel == dizel)&&(identical(other.katkili, katkili) || other.katkili == katkili));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marka,dizel,katkili);

@override
String toString() {
  return 'Diesel(marka: $marka, dizel: $dizel, katkili: $katkili)';
}


}

/// @nodoc
abstract mixin class $DieselCopyWith<$Res>  {
  factory $DieselCopyWith(Diesel value, $Res Function(Diesel) _then) = _$DieselCopyWithImpl;
@useResult
$Res call({
 String marka, double dizel, String katkili
});




}
/// @nodoc
class _$DieselCopyWithImpl<$Res>
    implements $DieselCopyWith<$Res> {
  _$DieselCopyWithImpl(this._self, this._then);

  final Diesel _self;
  final $Res Function(Diesel) _then;

/// Create a copy of Diesel
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


/// Adds pattern-matching-related methods to [Diesel].
extension DieselPatterns on Diesel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Diesel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Diesel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Diesel value)  $default,){
final _that = this;
switch (_that) {
case _Diesel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Diesel value)?  $default,){
final _that = this;
switch (_that) {
case _Diesel() when $default != null:
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
case _Diesel() when $default != null:
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
case _Diesel():
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
case _Diesel() when $default != null:
return $default(_that.marka,_that.dizel,_that.katkili);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Diesel implements Diesel {
  const _Diesel({required this.marka, required this.dizel, required this.katkili});
  factory _Diesel.fromJson(Map<String, dynamic> json) => _$DieselFromJson(json);

@override final  String marka;
@override final  double dizel;
@override final  String katkili;

/// Create a copy of Diesel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DieselCopyWith<_Diesel> get copyWith => __$DieselCopyWithImpl<_Diesel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DieselToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Diesel&&(identical(other.marka, marka) || other.marka == marka)&&(identical(other.dizel, dizel) || other.dizel == dizel)&&(identical(other.katkili, katkili) || other.katkili == katkili));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,marka,dizel,katkili);

@override
String toString() {
  return 'Diesel(marka: $marka, dizel: $dizel, katkili: $katkili)';
}


}

/// @nodoc
abstract mixin class _$DieselCopyWith<$Res> implements $DieselCopyWith<$Res> {
  factory _$DieselCopyWith(_Diesel value, $Res Function(_Diesel) _then) = __$DieselCopyWithImpl;
@override @useResult
$Res call({
 String marka, double dizel, String katkili
});




}
/// @nodoc
class __$DieselCopyWithImpl<$Res>
    implements _$DieselCopyWith<$Res> {
  __$DieselCopyWithImpl(this._self, this._then);

  final _Diesel _self;
  final $Res Function(_Diesel) _then;

/// Create a copy of Diesel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? marka = null,Object? dizel = null,Object? katkili = null,}) {
  return _then(_Diesel(
marka: null == marka ? _self.marka : marka // ignore: cast_nullable_to_non_nullable
as String,dizel: null == dizel ? _self.dizel : dizel // ignore: cast_nullable_to_non_nullable
as double,katkili: null == katkili ? _self.katkili : katkili // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
