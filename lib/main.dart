import 'package:flutter/material.dart';
import 'package:prathibhaapp/homepage.dart';
import 'package:prathibhaapp/login.dart';
import 'package:prathibhaapp/welcome_screen.dart';

void main() {
  runApp(PrathibhaApp());
}

class PrathibhaApp extends StatefulWidget {
  @override
  _PrathibhaAppState createState() => _PrathibhaAppState();
}

class _PrathibhaAppState extends State<PrathibhaApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginPage.id: (context) => LoginPage(),
        HomePage.id: (context) => HomePage(),
      },
    );
  }
}
