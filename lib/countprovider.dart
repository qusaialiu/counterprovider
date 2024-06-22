import 'package:flutter/widgets.dart';

class CountProvider extends ChangeNotifier{
  int x=0;
  add(){
    notifyListeners();
  }
  remove(){
    notifyListeners();
  }
}