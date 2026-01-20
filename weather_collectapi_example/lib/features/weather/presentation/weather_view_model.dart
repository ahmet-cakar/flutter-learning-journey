import 'package:flutter/material.dart';
import 'package:weather_collectapi_example/features/weather/models/daily_forecast.dart';
import 'package:weather_collectapi_example/features/weather/domain/weather_repository.dart';
import '../../../core/command.dart';

class WeatherViewModel extends ChangeNotifier {
  final WeatherRepository _repository;

  WeatherViewModel({required WeatherRepository repository})
    : _repository = repository,
      loadWeatherCommand = Command<List<DailyForecast>>() {
    loadWeatherCommand.addListener(notifyListeners);
  }

  late final Command<List<DailyForecast>> loadWeatherCommand;

  Future<void> loadWeather(String city) async {
    await loadWeatherCommand.run(() => _repository.getForecast(city));
  }
}
