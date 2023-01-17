import 'package:flutter/material.dart';
import 'package:hello_world/screen/fundamental/calculator_screen.dart';
import 'package:hello_world/screen/fundamental/constraint_screen.dart';
import 'package:hello_world/screen/fundamental/gesture_screen.dart';
import 'package:hello_world/screen/fundamental/navigation_routing_screen.dart';

class FundamentalLandingScreen extends StatelessWidget {
  const FundamentalLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const NavigationRoutingScreen();
                }));
              },
              child: const Text('Navigation & Routing'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const ConstraintScreen();
                }));
              },
              child: const Text('Constraint'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const GestureScreen();
                }));
              },
              child: const Text('Gesture'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const CalculatorScreen();
                }));
              },
              child: const Text('Calculator'),
            ),
          ],
        ),
      ),
    );
  }
}
