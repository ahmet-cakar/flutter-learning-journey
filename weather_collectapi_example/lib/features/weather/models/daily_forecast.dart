import 'package:freezed_annotation/freezed_annotation.dart';

part '../../../daily_forecast.freezed.dart';
part '../../../daily_forecast.g.dart';

@freezed
abstract class DailyForecast with _$DailyForecast {
  const factory DailyForecast({
    required String date,
    required String day,
    required String description,
    required String status,
    required String icon,
    @JsonKey(fromJson: _toDouble) required double degree,
    @JsonKey(fromJson: _toDouble) required double min,
    @JsonKey(fromJson: _toDouble) required double max,
    @JsonKey(fromJson: _toDouble) required double night,
    @JsonKey(fromJson: _toDouble) required double humidity,
  }) = _DailyForecast;

  factory DailyForecast.fromJson(Map<String, dynamic> json) =>
      _$DailyForecastFromJson(json);
}

double _toDouble(Object? value) {
  if (value is num) return value.toDouble(); // ileride sayı gelirse de çalışsın
  return double.parse(
    value.toString(),
  ); // şu anki gibi "31", "66.00" string ise
}
