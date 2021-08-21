import 'package:flutter/material.dart';

class CounterProvider extends ChangeNotifier {
  final String base;

  int _counter = 15;

  CounterProvider({required this.base}) {
    if (int.tryParse(this.base) != null) this._counter = int.parse(this.base);
  }

  void increment() {
    this._counter++;
    notifyListeners();
  }

  void decrement() {
    this._counter--;
    notifyListeners();
  }

  get counter => this._counter;
}
