import 'package:flutter/cupertino.dart';

class Day extends ChangeNotifier {
  var day = 0;

  void increase() {
    day++;
    notifyListeners();
  }

  void decrease() {
    day--;
    notifyListeners();
  }
}
