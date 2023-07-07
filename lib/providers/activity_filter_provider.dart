import 'package:flutter/cupertino.dart';

class ActivityFilterProvider with ChangeNotifier{
  int _index=0;
  get index=>_index;
  void changeindex(int index){
    _index=index;
    notifyListeners();
  }
}