import 'package:flutter/cupertino.dart';

class NavBarProvider with ChangeNotifier{
  int _index=0;
  get index=>_index;
  void changeindex(int index){
    _index=index;
    notifyListeners();
  }
}