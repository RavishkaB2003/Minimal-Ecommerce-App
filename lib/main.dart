import 'package:flutter/material.dart';
import 'package:minimal_ecommerce/pages/homePage.dart';
import 'package:minimal_ecommerce/pages/introPage.dart';
import 'package:minimal_ecommerce/theme/lightmode.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Intropage(),
      theme: lightmode,
      routes: {
        '/intro': (context) => Intropage(),
        '/home': (context) => Homepage(),
      },
    );
  }
}
