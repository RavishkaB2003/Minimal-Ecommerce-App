import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:minimal_ecommerce/models/products.dart';
import 'package:minimal_ecommerce/models/shop.dart';
import 'package:minimal_ecommerce/pages/cart_page.dart';
import 'package:minimal_ecommerce/pages/intro_page.dart';
import 'package:minimal_ecommerce/pages/shop_page.dart';
import 'package:minimal_ecommerce/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() async {
  //stat hive
  await Hive.initFlutter();

  //Registering the adapter
  Hive.registerAdapter(ProductsAdapter());

  //opening a box (this is like a database table) to store products
  await Hive.openBox<List>('cart_box');

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => Shop()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/intro',
      theme: Provider.of<ThemeProvider>(context).currenttheme,
      routes: {
        '/intro': (context) => Intropage(),
        '/shop': (context) => ShopPage(),
        '/cart': (context) => CartPage(),
      },
    );
  }
}
