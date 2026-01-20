import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_collectapi_example/core/command.dart';
import 'package:weather_collectapi_example/features/weather/models/daily_forecast.dart';
import 'package:weather_collectapi_example/features/weather/presentation/weather_view_model.dart';
import 'package:weather_collectapi_example/core/result.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  final _cityController = TextEditingController(text: 'ankara');

  @override
  void initState() {
    super.initState();
    Future.microtask(() {
      context.read<WeatherViewModel>().loadWeather('ankara');
    });
  }

  @override
  void dispose() {
    _cityController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final vm = context.watch<WeatherViewModel>();
    final cmd = vm.loadWeatherCommand;

    return Scaffold(
      appBar: AppBar(title: const Text("Hava Durumu")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _cityController,
                    decoration: const InputDecoration(
                      labelText: 'Şehir',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: cmd.running
                      ? null
                      : () {
                          final city = _cityController.text.trim();
                          if (city.isNotEmpty) {
                            vm.loadWeather(city);
                          }
                        },
                  child: const Text('Getir'),
                ),
              ],
            ),
          ),
          Expanded(child: _buildBody(cmd)),
        ],
      ),
    );
  }

  Widget _buildBody(Command<List<DailyForecast>> cmd) {
    if (cmd.running) {
      return const Center(child: CircularProgressIndicator());
    }

    if (cmd.result == null) {
      return const Center(child: Text('Henüz veri yok'));
    }

    if (cmd.result is Failure<List<DailyForecast>>) {
      final fail = cmd.result as Failure<List<DailyForecast>>;
      return Center(child: Text(fail.message));
    }

    final success = cmd.result as Success<List<DailyForecast>>;
    final forecasts = success.data;

    return ListView.separated(
      padding: const EdgeInsets.all(8),
      itemCount: forecasts.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) {
        final day = forecasts[index];

        return Card(
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              children: [
                // Sol tarafta ikon
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.network(
                    day.icon,
                    width: 52,
                    height: 52,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.wb_sunny_outlined, size: 40),
                  ),
                ),
                const SizedBox(width: 12),

                // Ortada gün + açıklama
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${day.day} • ${day.date}',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        day.description,
                        style: const TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                ),

                // Sağda sıcaklıklar
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '${day.degree.toStringAsFixed(0)}°',
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'min: ${day.min.toStringAsFixed(0)}°',
                      style: const TextStyle(fontSize: 12),
                    ),
                    Text(
                      'max: ${day.max.toStringAsFixed(0)}°',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
