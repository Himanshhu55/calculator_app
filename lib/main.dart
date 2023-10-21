import 'package:calculator_app/colors.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: CalculatorApp(),
    ),
  );
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({super.key});

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "",
                    style: TextStyle(fontSize: 48, color: Colors.white),
                  ),
                  Text(
                    "",
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white.withOpacity(.7),
                    ),
                  )
                ],
              ),
            ),
          ),
          Row(
            children: [
              button(
                  text: 'AC',
                  buttonBgColor: operatorColor,
                  tColor: orangeColor),
              button(
                  text: '<', buttonBgColor: operatorColor, tColor: orangeColor),
              button(text: '', buttonBgColor: Colors.transparent),
              button(
                  text: '/', buttonBgColor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(
                text: '7',
              ),
              button(text: '8'),
              button(text: '9'),
              button(
                  text: 'x', buttonBgColor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(
                text: '4',
              ),
              button(text: '5'),
              button(text: '6'),
              button(
                  text: '-', buttonBgColor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(
                text: '1',
              ),
              button(text: '2'),
              button(text: '3'),
              button(
                  text: '+', buttonBgColor: operatorColor, tColor: orangeColor),
            ],
          ),
          Row(
            children: [
              button(
                  text: '%', buttonBgColor: operatorColor, tColor: orangeColor),
              button(text: '0'),
              button(text: '.'),
              button(text: '=', buttonBgColor: orangeColor),
            ],
          )
        ],
      ),
    );
  }

  Widget button({text, tColor = Colors.white, buttonBgColor = buttonColor}) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.all(8),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(22),
              backgroundColor: buttonBgColor),
          onPressed: () {},
          child: Text(
            text,
            style: TextStyle(
              fontSize: 22,
              color: tColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
