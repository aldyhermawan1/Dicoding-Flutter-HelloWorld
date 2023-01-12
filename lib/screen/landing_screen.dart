import 'package:flutter/material.dart';
import 'package:hello_world/screen/beginner/beginner_landing_screen.dart';
import 'package:hello_world/screen/fundamental/fundamental_landing_screen.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

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
                  return const BeginnerLandingScreen();
                }));
              },
              child: const Text('Beginner'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return const FundamentalLandingScreen();
                }));
              },
              child: const Text('Fundamental'),
            ),
          ],
        ),
      ),
    );
  }
}
