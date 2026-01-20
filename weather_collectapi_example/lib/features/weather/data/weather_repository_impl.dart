import 'package:weather_collectapi_example/features/weather/models/daily_forecast.dart';
import 'package:weather_collectapi_example/features/weather/domain/weather_repository.dart';
import 'package:weather_collectapi_example/core/result.dart';
import 'package:weather_collectapi_example/features/weather/data/weather_api_service.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApiService _api;

  WeatherRepositoryImpl({required WeatherApiService api}) : _api = api;

  @override
  Future<Result<List<DailyForecast>>> getForecast(String city) async {
    try {
      final list = await _api.getForecast(city);
      return Success(list);
    } catch (e) {
      return Failure('Hava durumu alınamadı: $e');
    }
  }
}
