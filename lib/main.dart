import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //prevents app from going to landscape mode.
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xFF0A0D22),
          appBarTheme: AppBarTheme(
            color: Color(0xFF0A0D22),
          ),
      ),
      home: InputPage(),
    );
  }
}

// Color(0xFF0A0D22)
