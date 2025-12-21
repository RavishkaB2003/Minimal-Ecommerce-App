import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/theme/hexcolorextension.dart';

ThemeData darkmode = ThemeData(
  scaffoldBackgroundColor: HexColors.fromHex(
    '#05100d',
  ), //for scaffold background
  colorScheme: ColorScheme.dark(
    surface: HexColors.fromHex(
      '#44eebb',
    ), //for cards, containers, listtiles etc
    primary: HexColors.fromHex(
      '#52a78e',
    ), //main color of the app for main buttons, appbar etc
    secondary: HexColors.fromHex(
      '#158463',
    ), //supporting color for accents and highlights
    inversePrimary: HexColors.fromHex(
      '#771d38',
    ), //special color for contrasting elements
    
  ),
  textTheme: TextTheme(
    headlineLarge:TextStyle(
      color: HexColors.fromHex('#e2f3ee')
    ),
    titleMedium:TextStyle(
      color: HexColors.fromHex('#e2f3ee')
    ),
    labelMedium:TextStyle(
      color: HexColors.fromHex('#e2f3ee')
    ),
  )
);