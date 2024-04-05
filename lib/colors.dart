import 'package:flutter/material.dart';

const MaterialColor primarybackground =
    MaterialColor(_primarybackgroundPrimaryValue, <int, Color>{
  50: Color(0xFFE5E5E5),
  100: Color(0xFFBEBEBF),
  200: Color(0xFF939394),
  300: Color(0xFF686869),
  400: Color(0xFF474749),
  500: Color(_primarybackgroundPrimaryValue),
  600: Color(0xFF232324),
  700: Color(0xFF1D1D1F),
  800: Color(0xFF171719),
  900: Color(0xFF0E0E0F),
});
const int _primarybackgroundPrimaryValue = 0xFF272729;

const MaterialColor primarybackgroundAccent =
    MaterialColor(_primarybackgroundAccentValue, <int, Color>{
  100: Color(0xFF6767EE),
  200: Color(_primarybackgroundAccentValue),
  400: Color(0xFF0000EF),
  700: Color(0xFF0000D5),
});
const int _primarybackgroundAccentValue = 0xFF3A3AE9;
