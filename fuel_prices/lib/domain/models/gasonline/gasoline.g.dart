// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gasoline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Gasoline _$GasolineFromJson(Map<String, dynamic> json) => _Gasoline(
  marka: json['marka'] as String,
  benzin: (json['benzin'] as num).toDouble(),
  katkili: json['katkili'] as String,
);

Map<String, dynamic> _$GasolineToJson(_Gasoline instance) => <String, dynamic>{
  'marka': instance.marka,
  'benzin': instance.benzin,
  'katkili': instance.katkili,
};
