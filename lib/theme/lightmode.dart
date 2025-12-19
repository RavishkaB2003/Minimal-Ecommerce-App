import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/theme/hexcolorextension.dart';

ThemeData lightmode = ThemeData(
  scaffoldBackgroundColor: HexColors.fromHex(
    '#effaf7',
  ), //for scaffold background
  colorScheme: ColorScheme.light(
    surface: HexColors.fromHex(
      '#11bb88',
    ), //for cards, containers, listtiles etc
    primary: HexColors.fromHex(
      '#1d775c',
    ), //main color of the app for main buttons, appbar etc
    secondary: HexColors.fromHex(
      '#7beac9',
    ), //supporting color for accents and highlights
    inversePrimary: HexColors.fromHex(
      '#e288a3',
    ), //special color for contrasting elements
  ),
);




/*
Reference (https://www.realtimecolors.com/)
Color Combos for light mode and dark mode:
light mode:
           Scaffold Background: #effaf7
           surface : #11bb88
           primary : #1d775c
           secondary : #7beac9
           inversePrimary(accents) : e288a3   
           Text : #0c1d18

dark mode:
           Scaffold Background: #05100d
           surface : #44eebb
           primary : #52a78e
           secondary : #158463
           inversePrimary(accents) : #771d38 
           Text : #e2f3ee








*/