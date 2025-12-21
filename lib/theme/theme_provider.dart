// ignore_for_file: prefer_final_fields

import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/theme/darkmode.dart';
import 'package:minimal_ecommerce/theme/lightmode.dart';

class ThemeProvider extends ChangeNotifier {
  //default is light mode
  // ignore: unused_field
  ThemeData _currenttheme = lightmode;

  //get current theme
  ThemeData get currenttheme => _currenttheme;

  //set the current theme
  set currenttheme(ThemeData theme) {
    _currenttheme = theme;
    notifyListeners();
  }

  //toggle between light and dark mode
  void toggleTheme() {
    if (_currenttheme == lightmode) {
      _currenttheme = darkmode;
    } else {
      _currenttheme = lightmode;
    }
    notifyListeners();
  }
}
