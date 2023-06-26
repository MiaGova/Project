import 'package:flutter/material.dart';
class BtmPro extends ChangeNotifier{
  int a;
  BtmPro({required this.a});
  change(int b){
    a =b;
    notifyListeners();
  }
}