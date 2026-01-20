// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'features/weather/models/daily_forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_DailyForecast _$DailyForecastFromJson(Map<String, dynamic> json) =>
    _DailyForecast(
      date: json['date'] as String,
      day: json['day'] as String,
      description: json['description'] as String,
      status: json['status'] as String,
      icon: json['icon'] as String,
      degree: _toDouble(json['degree']),
      min: _toDouble(json['min']),
      max: _toDouble(json['max']),
      night: _toDouble(json['night']),
      humidity: _toDouble(json['humidity']),
    );

Map<String, dynamic> _$DailyForecastToJson(_DailyForecast instance) =>
    <String, dynamic>{
      'date': instance.date,
      'day': instance.day,
      'description': instance.description,
      'status': instance.status,
      'icon': instance.icon,
      'degree': instance.degree,
      'min': instance.min,
      'max': instance.max,
      'night': instance.night,
      'humidity': instance.humidity,
    };
