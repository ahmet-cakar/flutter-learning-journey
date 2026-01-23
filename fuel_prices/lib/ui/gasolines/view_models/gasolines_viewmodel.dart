import 'package:flutter/material.dart';
import 'package:fuel_prices/data/repositories/gasoline/gasoline_repository.dart';
import 'package:fuel_prices/domain/models/gasonline/gasoline.dart';
import 'package:fuel_prices/utils/command.dart';
import 'package:fuel_prices/utils/result.dart';

class GasolinesViewmodel extends ChangeNotifier {
  final GasolineRepository _gasolineRepository;
  late final Command0<List<Gasoline>> _loadGasolinesCommand;
  // 👉 UI buradan erişebilsin
  Command0<List<Gasoline>> get loadGasolinesCommand => _loadGasolinesCommand;

  List<Gasoline> _gasolines = [];
  List<Gasoline> get gasolines => _gasolines;

  String? _errorMessage;
  String? get errorMessage => _errorMessage;

  GasolinesViewmodel(this._gasolineRepository) {
    _loadGasolinesCommand = Command0(_loadGasolinesOnRepo);
  }

  Future<Result<List<Gasoline>>> _loadGasolinesOnRepo() async {
    final result = await _gasolineRepository.getGasolinesList();
    switch (result) {
      case Ok<List<Gasoline>>(:final value):
        _gasolines = value;
        _errorMessage = null;
      case Error<List<Gasoline>>(:final error):
        _errorMessage = error.toString();
    }
    notifyListeners();
    return result;
  }
}
