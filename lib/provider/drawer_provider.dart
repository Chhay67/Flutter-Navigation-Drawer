import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  // selected index
  int selectedIndex = 0;

  //function onChanged index
  void onChangedIndex(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
