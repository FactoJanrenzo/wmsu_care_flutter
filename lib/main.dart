import 'package:flutter/material.dart';
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
      home: LoginPage(),
    );
  }
}
