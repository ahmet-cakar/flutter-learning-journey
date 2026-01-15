import 'package:flutter/material.dart';

// SimpleCommand<T> bu comment ne tür bir veri döndürecek burada T
class SimpleCommand<T> extends ChangeNotifier {
  SimpleCommand(this._action);

  final Future<T> Function()
  _action; // Elimde parametre almayan Future<T> döndüren fonksiyon var (yükle, sil, delete, vs )

  bool running = false;
  Object? error; //hata her şey olabilir bu yüzden Object ortak ata
  T?
  value; //döndürülen değeri saklayacağımız kısım (Bu komutun ürettiği son değeri burada saklayacağım)

  Future<void> execute() async {
    if (running) return;

    running = true;
    error = null;
    notifyListeners();

    try {
      final result = await _action();
      value = result;
    } catch (e) {
      error = e;
    } finally {
      running = false;
      notifyListeners();
    }
  }
}
