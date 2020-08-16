import 'package:carousel_pro/carousel_pro.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prathibhaapp/constants.dart';

class HomePage extends StatefulWidget {
  static const String id = "home_page";
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _page = 0;
  GlobalKey _bottomNavigationKey = GlobalKey();
  Widget cont = Text("Hello");
  GlobalKey _scaffoldKey = new GlobalKey();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black),
          leading: Row(
            children: <Widget>[
              Expanded(
                flex: 2,
                child: IconButton(
                  icon: Icon(Icons.arrow_back_ios),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                    );
                  },
                ),
              ),
            ],
          ),
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
          actions: <Widget>[
            PopupMenuButton<String>(
              icon: Icon(Icons.settings),
              itemBuilder: (BuildContext context) {
                return <PopupMenuEntry<String>>[
                  const PopupMenuItem(
                    child: Text("Settings"),
                  ),
                  const PopupMenuItem(
                    child: Text("Account"),
                  ),
                  const PopupMenuItem(
                    child: Text("Help"),
                  ),
                  const PopupMenuItem(
                    child: Text("Logout"),
                  ),
                ];
              },
              onSelected: (result) {},
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text("Roncy R Thomas"),
                accountEmail: Text("roncy516@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: Container(
          color: Color(kContainerColor),
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Carousel(
                    dotSize: 5,
                    images: [
                      AssetImage(
                        "assets/n1.png",
                      ),
                      AssetImage(
                        "assets/p1.png",
                      ),
                      AssetImage(
                        "assets/o1.png",
                      ),
                    ],
                  ),
                ),
              ),
              cont,
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: CurvedNavigationBar(
            key: _bottomNavigationKey,
            index: 0,
            height: 50.0,
            items: <Widget>[
              NavbarItem(
                icon: Icons.airplay,
                text: "Exams",
              ),
              NavbarItem(
                icon: Icons.credit_card,
                text: "Payment",
              ),
              NavbarItem(
                icon: Icons.home,
                text: "Home",
              ),
              NavbarItem(
                icon: Icons.laptop,
                text: "Result",
              ),
              NavbarItem(
                icon: Icons.help_outline,
                text: "Help",
              ),
            ],
            color: Colors.white,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Color(kContainerColor),
            animationCurve: Curves.easeInOut,
            animationDuration: Duration(milliseconds: 600),
            onTap: (index) {
              setState(() {
                _page = index;
                cont = Text(_page.toString(), textScaleFactor: 10.0);
              });
            },
          ),
        ),
      ),
    );
  }
}

class NavbarItem extends StatelessWidget {
  final IconData icon;
  final String text;
  NavbarItem({this.icon, this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 25),
        Text(
          text,
          style: TextStyle(fontSize: 10),
        )
      ],
    );
  }
}
