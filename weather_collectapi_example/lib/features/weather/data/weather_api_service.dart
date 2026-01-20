import 'package:dio/dio.dart';
import 'package:weather_collectapi_example/features/weather/models/daily_forecast.dart';

class WeatherApiService {
  WeatherApiService(this._dio);
  final Dio _dio;

  Future<List<DailyForecast>> getForecast(String city) async {
    final response = await _dio.get(
      'https://api.collectapi.com/weather/getWeather',
      queryParameters: {'lang': 'tr', 'city': city},
      options: Options(
        headers: {
          'authorization':
              'apikey 0HHGy6AY2W4IFY8peoVKI6:5caR34ZKtK6OWiASxyfIpL',
          'content-type': 'application/json',
        },
      ),
    );

    final List<dynamic> list = response.data as List<dynamic>;

    
    return list.map((item) {
      return DailyForecast.fromJson(item as Map<String, dynamic>);
    }).toList();
  }
}
