import 'package:flutter/material.dart';
import 'package:prathibhaapp/constants.dart';
import 'package:prathibhaapp/login_and_register.dart';

class LoginPage extends StatefulWidget {
  static const String id = "login";
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool active = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  width: double.infinity,
                ),
                Container(
                  width: 300.0,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (active == false) {
                                active = true;
                              }
                            });
                          },
                          child: Container(
                            decoration: active
                                ? kEnabledBoxDecoration
                                : kDisabledBoxDecoration,
                            width: 150,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    color:
                                        active ? kEnabledText : kDisabledText,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              if (active == true) {
                                active = false;
                              }
                            });
                          },
                          child: Container(
                            decoration: active
                                ? kDisabledBoxDecoration
                                : kEnabledBoxDecoration,
                            width: 150,
                            height: 50,
                            child: Center(
                              child: Text(
                                "Register",
                                style: TextStyle(
                                    color:
                                        active ? kDisabledText : kEnabledText,
                                    fontSize: 20.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 300,
                  child: active ? LoginContainer() : RegisterContainer(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
