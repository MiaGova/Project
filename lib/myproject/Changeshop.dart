import 'package:flutter/material.dart';
class Shopbag extends ChangeNotifier{
  int a;
  Shopbag({required this.a});
  add(){
    a++;notifyListeners();
  }
  remove(){a--;
    notifyListeners();
  }
}
