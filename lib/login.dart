import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Text("login page"),
        ),
      ),
    );
  }
}
