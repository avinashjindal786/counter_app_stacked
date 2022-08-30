

import 'package:stacked/stacked.dart';

class CounterAppModel extends BaseViewModel{

  int _counter = 0;

  int get counter => _counter;

  void increment(){
    _counter += 1;
    notifyListeners();
  }

  void decrement(){
    _counter -= 1;
    notifyListeners();
  }
}