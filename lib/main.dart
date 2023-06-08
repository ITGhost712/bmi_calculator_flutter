import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      theme: ThemeData.dark().copyWith(
          appBarTheme: const AppBarTheme(
            color:  Color(0xFF10163B),
          ),
          scaffoldBackgroundColor: Color(0xFF0F1336),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
