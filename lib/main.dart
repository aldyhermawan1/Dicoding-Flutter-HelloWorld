import 'package:flutter/material.dart';
import 'package:hello_world/screen/beginner/beginner_landing_screen.dart';
import 'package:hello_world/screen/fundamental/fundamental_landing_screen.dart';
import 'package:hello_world/screen/fundamental/navigation_routing_screen.dart';
import 'package:hello_world/screen/landing_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const LandingScreen(),
        '/beginner': (context) => const BeginnerLandingScreen(),
        '/fundamental': (context) => const FundamentalLandingScreen(),
        '/fundamental/secondScreen': (context) => const SecondScreen(),
        '/fundamental/secondScreenWithData': (context) => SecondScreenWithData(
          ModalRoute.of(context)?.settings.arguments as String
        ),
        '/fundamental/returnDataScreen': (context) => const ReturnDataScreen(),
        '/fundamental/replacementScreen': (context) => const ReplacementScreen(),
        '/fundamental/anotherScreen': (context) => const AnotherScreen(),
      },
    );
  }
}
