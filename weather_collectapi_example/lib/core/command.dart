import 'package:flutter/foundation.dart';
import 'result.dart';

class Command<T> extends ChangeNotifier {
  bool _running = false;
  Result<T>? _result;

  bool get running => _running;
  Result<T>? get result => _result;

  Future<void> run(Future<Result<T>> Function() action) async {
    if (_running) return; // aynı anda iki kez çalışmasın

    _running = true;
    _result = null;
    notifyListeners();

    try {
      _result = await action();
    } finally {
      _running = false;
      notifyListeners();
    }
  }
}
