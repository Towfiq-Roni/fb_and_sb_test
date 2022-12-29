import 'dart:async';

import 'package:flutter/material.dart';

class CalculateSum with ChangeNotifier{
  int _count = 0;

  int get count => _count;

  int get getCounter{
    return count;
  }

  void increment(){
    _count++;
    notifyListeners();
  }
}

class EventProvider {
  StreamController<int> sc = StreamController();
  // int count = 0;
  int _count = 0;

  int get count => _count;

  int get getCounter{
    return count;
  }

  Stream<int> intStream() {
    return sc.stream;
  }

  add() {
    sc.add(++_count);
  }
}

class EventProviderSecond{
  int countF = EventProvider().count;
  Future<int> fc = Future(() => EventProvider().count);
}