// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gasoline.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Gasoline _$GasolineFromJson(Map<String, dynamic> json) => _Gasoline(
  marka: json['marka'] as String,
  dizel: (json['dizel'] as num).toDouble(),
  katkili: json['katkili'] as String,
);

Map<String, dynamic> _$GasolineToJson(_Gasoline instance) => <String, dynamic>{
  'marka': instance.marka,
  'dizel': instance.dizel,
  'katkili': instance.katkili,
};
