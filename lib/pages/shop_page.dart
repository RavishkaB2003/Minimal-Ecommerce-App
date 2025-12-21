import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce/components/drawer.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Shop',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Theme.of(context).textTheme.labelMedium?.color,
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      ),
      drawer: AppDrawer(
        onTap: null,
      ),
      body: Center(
        child: Text('Shop Page'),
      ),
    );
  }
}