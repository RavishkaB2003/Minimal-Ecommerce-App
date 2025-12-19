import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              color: Theme.of(context).textTheme.labelMedium?.color,
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Text('Home Page'),
      ),
    );
  }
}