// ignore: file_names
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyListTile extends StatelessWidget {
  final void Function()? onTap;
  final IconData? icon;
  final String text;
  const MyListTile({
    super.key,
    required this.onTap,
    required this.icon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(horizontal: 10),
      onTap: onTap,
      leading: Icon(
        icon,
        color: Theme.of(context).colorScheme.primary,
        size: 30,
      ),
      title: Text(
        text,
        style: GoogleFonts.poppins(
          textStyle: TextStyle(
            color: Theme.of(context).textTheme.labelMedium?.color,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
