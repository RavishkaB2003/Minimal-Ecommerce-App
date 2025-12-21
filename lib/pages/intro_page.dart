import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:minimal_ecommerce/components/button.dart';

class Intropage extends StatelessWidget {
  const Intropage({super.key});

  

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          //logo
          children: [
            Icon(
              Icons.shopping_bag,
              size: 100,
              color: Theme.of(context).colorScheme.primary,
            ),
            SizedBox(height: 10),
            //title
            Text(
              'Minimal Shop',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Theme.of(context).textTheme.headlineLarge?.color,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //subtitle
            SizedBox(height: 2),
            Text(
              'Premium Quality Products',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  color: Theme.of(context).textTheme.labelMedium?.color,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            //get started button
            SizedBox(height: 30),
            Button(
              onTap: () => Navigator.pushNamed(context, '/shop'),
              child: Icon(
                Icons.arrow_forward,
                color: Theme.of(context).textTheme.labelMedium?.color,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
