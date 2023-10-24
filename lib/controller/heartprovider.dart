import 'package:flutter/material.dart';

class HeartProvider extends ChangeNotifier {
  Color heartColor = Colors.grey;
  double targetvalue = 30;

  void changeHeartColor() {
    if (heartColor == Colors.grey) {
      heartColor = Colors.red;
      targetvalue = 40;
    } else {
      heartColor = Colors.grey;
      targetvalue = 30;
    }
    notifyListeners();
  }
}
