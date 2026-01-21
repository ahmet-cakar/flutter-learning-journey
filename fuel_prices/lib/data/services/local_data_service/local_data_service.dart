import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:fuel_prices/config/assets.dart';
import 'package:fuel_prices/domain/models/diesel/diesel.dart';
import 'package:fuel_prices/domain/models/gasonline/gasoline.dart';
import 'package:fuel_prices/domain/models/lgp/lpg.dart';

class LocalDataService {
  Future<List<Gasoline>> getGasolines() async {
    final json = await _loadStringAssets(Assets.gasoline_prices);
    return json.map<Gasoline>(Gasoline.fromJson).toList();
  }

  Future<List<Lpg>> getLpgs() async {
    final json = await _loadStringAssets(Assets.lpg_prices);
    return json.map<Lpg>(Lpg.fromJson).toList();
  }

  Future<List<Diesel>> getDiesels() async {
    //başka bir kullanım
    final json = await _loadStringAssets(Assets.diesel_prices);
    return json.map((e) {
      return Diesel.fromJson(e);
    }).toList();
  }

  Future<List<Map<String, dynamic>>> _loadStringAssets(String assets) async {
    final localData = await rootBundle.loadString(assets);
    final decoded = jsonDecode(localData) as Map<String, dynamic>;
    final list = decoded['result'] as List;
    return list.cast<Map<String, dynamic>>();
  }
}
