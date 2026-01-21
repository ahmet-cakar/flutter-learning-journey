// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'diesel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Diesel _$DieselFromJson(Map<String, dynamic> json) => _Diesel(
  marka: json['marka'] as String,
  dizel: (json['dizel'] as num).toDouble(),
  katkili: json['katkili'] as String,
);

Map<String, dynamic> _$DieselToJson(_Diesel instance) => <String, dynamic>{
  'marka': instance.marka,
  'dizel': instance.dizel,
  'katkili': instance.katkili,
};
