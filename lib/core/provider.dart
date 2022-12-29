import 'dart:async';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

// class CalculateSum with ChangeNotifier{
//   int _count = 0;
//
//   int get count => _count;
//
//   int get getCounter{
//     return count;
//   }
//
//   void increment(){
//     _count++;
//     notifyListeners();
//   }
// }

class EventProviderStream {
  StreamController<int> sc = StreamController();
  // int count = 0;
  int _countS = 0;
  int get count => _countS;

  int get getCounter{
    return count;
  }

  Stream<int> intStream() {
    return sc.stream;
  }

  add() {
    sc.add(++_countS);
  }
}

class EventProviderFuture{
  // int countF = EventProviderStream().count;
  int countF = 0;
  int get count => countF;
  Future<int> fc = Future(() => EventProviderCNotifier().count);
}

class EventProviderCNotifier extends ChangeNotifier{
  int _countC = 0;
  int get count => _countC;
  EventProviderCNotifier() {}
  void incrementCount() {
    _countC++;
    notifyListeners();
  }
}

