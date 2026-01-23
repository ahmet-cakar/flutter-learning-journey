
import 'package:fuel_prices/domain/models/gasonline/gasoline.dart';
import 'package:fuel_prices/utils/result.dart';

abstract class  GasolineRepository {
  
  Future<Result<List<Gasoline>>> getGasolinesList();
}