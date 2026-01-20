import 'package:weather_collectapi_example/features/weather/models/daily_forecast.dart';
import 'package:weather_collectapi_example/core/result.dart';

abstract class WeatherRepository {
  Future<Result<List<DailyForecast>>> getForecast(String city);
}