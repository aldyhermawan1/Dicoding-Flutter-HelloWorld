import 'package:flutter/material.dart';
import 'package:hello_world/screen/expanded_flexible_screen.dart';
import 'package:hello_world/screen/rainbow_screen.dart';
import 'package:hello_world/screen/responsive_list_screen.dart';
import 'package:hello_world/screen/responsive_screen.dart';
import 'package:hello_world/screen/stateful_screen.dart';
import 'package:hello_world/screen/stateless_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final List itemList = [
    'Stateless',
    'Stateful',
    'Rainbow',
    'Expanded / Flexible',
    'Responsive',
    'Responsive List'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Landing Page'),
      ),
      body: Center(
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: itemList.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    switch(index){
                      case 0:
                        return const FirstScreenStateless("Lorem Ipsum Dolor Sit Amet");
                      case 1:
                        return const FirstScreenStateful();
                      case 2:
                        return const Rainbow();
                      case 3:
                        return const ExpandedFlexiblePage();
                      case 4:
                        return const ResponsivePage();
                      case 5:
                        return const ResponsiveListPage();
                      default:
                        return const LandingPage();
                    }
                  }));
                },
                child: Text(itemList[index]),
              ),
            );
          },
        ),
      ),
    );
  }
}