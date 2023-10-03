import 'package:flutter/material.dart';
import 'dart:math';

class CounterProvider with ChangeNotifier {
  int _counter = 0; //Variable privada, la usamos en el provider namas

  int get counter => _counter; //Obtiene valor de counter, variable publica

  void increment() {
    _counter++;
    notifyListeners(); //Avisa a los listeners que cambio un dato
  }

  void decrement() {
    _counter--;
    notifyListeners();
  }

  void reset() {
    _counter = 0;
    notifyListeners();
  }

  void multi(int factor) {
    _counter *= factor;
    notifyListeners();
  }

  bool esPrimo(int numero) {
    if (numero <= 1) return false;
    if (numero == 2) return true;

    for (int i = 2; i <= numero / 2; i++) {
      if (numero % i == 0) return false;
    }
    return true;
  }
}
