import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final void Function()? onTap;
  final Widget? child;
  const Button({super.key, required this.onTap, required this.child});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(8),
        ),
        child: child,
      ),
    );
  }
}
