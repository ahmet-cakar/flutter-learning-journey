import 'package:flutter/material.dart';
import 'package:fuel_prices/data/repositories/gasoline/gasoline_repository.dart';
import 'package:fuel_prices/data/repositories/gasoline/gasoline_repository_local.dart';
import 'package:fuel_prices/data/services/local_data_service/local_data_service.dart';
import 'package:fuel_prices/ui/gasolines/view_models/gasolines_viewmodel.dart';

import 'package:fuel_prices/ui/gasolines/widgets/gasolines_screen.dart';
import 'package:provider/provider.dart';

void main() {
  final gasolineRepository = GasolineRepositoryLocal(
    localDataService: LocalDataService(),
  );
  runApp(
    MultiProvider(
      providers: [
        Provider<GasolineRepository>.value(value: gasolineRepository),
        ChangeNotifierProvider(
          create: (context) =>
              GasolinesViewmodel(context.read<GasolineRepository>()),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: GasolinesScreen(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const GasolinesScreen(),
    );
  }
}
