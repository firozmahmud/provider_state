import 'package:flutter/cupertino.dart';

class Month extends ChangeNotifier {
  var month = 0;

  void increase() {
    month++;
    notifyListeners();
  }

  void decrease() {
    month--;
    notifyListeners();
  }
}
