import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce/components/drawer.dart';
import 'package:minimal_ecommerce/components/my_productTile.dart';
import 'package:minimal_ecommerce/models/shop.dart';
import 'package:provider/provider.dart';

class ShopPage extends StatelessWidget {
  const ShopPage({super.key});

  @override
  Widget build(BuildContext context) {
    //access products in shop
    final products = context.watch<Shop>().shop;

    return Scaffold(
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
      drawer: AppDrawer(),
      body: ListView(
        children: [
          SizedBox(height: 20,),
          //shop title
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text('Shop',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                color: Theme.of(context).textTheme.headlineLarge?.color,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),),
          ),

          //product lsit
          SizedBox(
        height: 550,
        child: ListView.builder(
          itemCount: products.length,
          padding: EdgeInsets.all(15),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            final product = products[index];
            return MyProducttile(product: product);
          },
        ),
      ),
        ],
      )
    );
  }
}
