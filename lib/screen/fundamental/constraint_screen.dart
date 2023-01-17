import 'package:flutter/material.dart';

class ConstraintScreen extends StatelessWidget {
  const ConstraintScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        color: Colors.red,
        padding: const EdgeInsets.all(16),
        child: Container(
          color: Colors.green,
          width: 100,
          height: 100,
        ),
      ),
    );
  }
}