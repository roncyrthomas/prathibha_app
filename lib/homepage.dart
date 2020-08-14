import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text("Roncy R Thomas"),
              accountEmail: Text("roncy516@gmail.com"),
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Hero(
          tag: "logo",
          child: Container(
            height: 50,
            child: Image(
              image: AssetImage(
                "assets/final.png",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
