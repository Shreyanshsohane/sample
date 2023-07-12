import 'package:flutter/material.dart';

class MainScreenProvider with ChangeNotifier {
  SelectedIndex _selectedIndex = SelectedIndex(0);

  void changeSelectedIndex(int index) {
    _selectedIndex = SelectedIndex(index);
    notifyListeners();
  }

  SelectedIndex get selectedIndex => _selectedIndex;
}

class SelectedIndex {
  final int index;
  SelectedIndex(this.index);
}
