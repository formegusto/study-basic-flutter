import 'package:flutter/material.dart';

class CountProvider with ChangeNotifier {
  int _counter;

  CountProvider(this._counter);

  getCounter() => _counter;
  setCount(int counter) => _counter = counter;

  void increment() {
    _counter++;
    notifyListeners();
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }
}
