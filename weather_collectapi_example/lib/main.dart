import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_collectapi_example/features/weather/data/weather_repository_impl.dart';
import 'package:weather_collectapi_example/features/weather/domain/weather_repository.dart';
import 'package:weather_collectapi_example/features/weather/presentation/weather_page.dart';
import 'package:weather_collectapi_example/features/weather/presentation/weather_view_model.dart';
import 'package:weather_collectapi_example/features/weather/data/weather_api_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final dio = Dio();
  final api = WeatherApiService(dio);
  final repository = WeatherRepositoryImpl(api: api);

  runApp(WeatherApp(repository: repository));
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key, required this.repository});

  final WeatherRepository repository;
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeatherViewModel>(
          create: (_) {
            return WeatherViewModel(repository: repository);
          },
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: WeatherPage(),
      ),
    );
  }
}
