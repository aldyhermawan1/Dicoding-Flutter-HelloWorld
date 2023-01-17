import 'package:flutter/material.dart';

class CalculatorItem {
  Color bgColor;
  Color fgColor;
  String text;
  IconData? icon;

  CalculatorItem({
    required this.bgColor,
    required this.fgColor,
    required this.text,
    this.icon,
  });
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<CalculatorItem> calculatorItems = [
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorLight,
        fgColor: Theme.of(context).primaryColorDark,
        text: 'C',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorLight,
        fgColor: Theme.of(context).primaryColorDark,
        text: '+/-',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorLight,
        fgColor: Theme.of(context).primaryColorDark,
        text: '%',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorDark,
        fgColor: Theme.of(context).primaryColorLight,
        text: 'Back',
        icon: Icons.backspace,
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '7',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '8',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '9',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorDark,
        fgColor: Theme.of(context).primaryColorLight,
        text: '/',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '4',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '5',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '6',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorDark,
        fgColor: Theme.of(context).primaryColorLight,
        text: 'X',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '1',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '2',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '3',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorDark,
        fgColor: Theme.of(context).primaryColorLight,
        text: '-',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '0',
      ),
      CalculatorItem(
        bgColor: Colors.white,
        fgColor: Theme.of(context).primaryColorDark,
        text: '.',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorLight,
        fgColor: Theme.of(context).primaryColorDark,
        text: '=',
      ),
      CalculatorItem(
        bgColor: Theme.of(context).primaryColorDark,
        fgColor: Theme.of(context).primaryColorLight,
        text: '+',
      ),
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Theme.of(context).primaryColor,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  '0',
                  style: Theme.of(context)
                      .textTheme
                      .headline3!
                      .copyWith(color: Colors.white),
                ),
              ),
            ),
          ),
          GridView.count(
            padding: const EdgeInsets.all(0),
            shrinkWrap: true,
            crossAxisCount: 4,
            children: calculatorItems.map((e) {
              if (e.icon == null) {
                return CalculatorButton(
                  bgColor: e.bgColor,
                  fgColor: e.fgColor,
                  text: e.text,
                  onTap: () {},
                );
              } else {
                return CalculatorButton.item(
                  bgColor: e.bgColor,
                  fgColor: e.fgColor,
                  text: e.text,
                  icon: e.icon,
                  onTap: () {},
                );
              }
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final Function() onTap;

  final Color bgColor;
  final Color fgColor;
  final String text;
  IconData? icon;

  CalculatorButton({
    super.key,
    required this.bgColor,
    required this.fgColor,
    required this.text,
    required this.onTap,
  });

  CalculatorButton.item({
    super.key,
    required this.bgColor,
    required this.fgColor,
    required this.text,
    required this.icon,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: bgColor,
        child: Center(
            child: icon == null
                ? Text(
              text,
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: fgColor),
            )
                : Icon(
              icon,
              color: fgColor,
            )),
      ),
    );
  }
}
