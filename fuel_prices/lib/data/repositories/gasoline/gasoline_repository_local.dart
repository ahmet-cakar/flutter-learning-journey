import 'package:fuel_prices/data/repositories/gasoline/gasoline_repository.dart';
import 'package:fuel_prices/data/services/local_data_service/local_data_service.dart';
import 'package:fuel_prices/domain/models/gasonline/gasoline.dart';
import 'package:fuel_prices/utils/result.dart';

class GasolineRepositoryLocal implements GasolineRepository {
  GasolineRepositoryLocal({required LocalDataService localDataService})
    : _localDataService = localDataService;

  final LocalDataService _localDataService;

  @override
  Future<Result<List<Gasoline>>> getGasolinesList() async {
    try {
      final gasolines = await _localDataService.getGasolines();
      return Result.ok(gasolines);
    } on Exception catch (error) {
      return Result.error(error);
    }
  }
}
