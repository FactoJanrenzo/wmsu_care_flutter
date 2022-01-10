import 'package:flutter/material.dart';
import 'package:mi_card_flutter/screens/choose.dart';
import 'package:mi_card_flutter/screens/gad_7_screening.dart';
import 'package:mi_card_flutter/screens/results.dart';
import 'screens/login_page.dart';

void main() => runApp(WMSUCare());

class WMSUCare extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFFFFFFFF), //app bar color
        scaffoldBackgroundColor: Color(0xFF990000), //the foreground color
      ),
      //home: LoginPage(),
      initialRoute: LoginPage.id,
      routes: {
        LoginPage.id: (context) => LoginPage(),
        Choose.id: (context) => Choose(),
        Quizzler.id: (context) => Quizzler(),
        ResultsPage.id: (context) => ResultsPage(scoreResult: '', interpretation: '', resultText: '',),
      },
    );
  }
}
