import 'package:flutter/material.dart';

class CountController with ChangeNotifier {
  int count=0;
  increament(){
    count++;
    notifyListeners();
  }
  decrement(){
    count--;
    notifyListeners();
  }
}