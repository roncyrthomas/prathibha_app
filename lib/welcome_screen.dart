import 'package:flutter/material.dart';
import 'package:prathibhaapp/login.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = "welcome_screen";
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation animation;

  double opa = 0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    animation =
        ColorTween(begin: Colors.grey, end: Colors.white).animate(controller);
    controller.forward();
    controller.addListener(() {
      setState(() {
        opa = 1;
        if (controller.value == 1) {
          Navigator.pushNamed(context, LoginPage.id);
        }
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: SafeArea(
        child: Center(
          child: AnimatedOpacity(
            opacity: opa,
            duration: Duration(seconds: 2),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Hero(
                    tag: "logo",
                    child: Image.asset("assets/final.png"),
                  ),
                ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
