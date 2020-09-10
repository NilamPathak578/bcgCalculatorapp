import 'package:bcgCalculator_app/screens/calculatorPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.red.shade500,
      textTheme: TextTheme(
        headline3: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        bodyText1: TextStyle(fontSize: 15.0),
      ),
    ),
    home: CalculatorPage(),
  ));
}
