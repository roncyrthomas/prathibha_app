import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prathibhaapp/constants.dart';

class GridPage extends StatefulWidget {
  @override
  _GridPageState createState() => _GridPageState();
}

class _GridPageState extends State<GridPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(kContainerColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GridCard(
                line1: "3 Years UPSC ",
                line2: "Question Papers",
                image: 1,
              ),
              GridCard(
                image: 2,
                line1: "Previous 25 Year",
                line2: "Question Papers",
              ),
              GridCard(
                image: 3,
                line1: "All India Mock",
                line2: "Tests",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              GridCard(
                line1: "Review ",
                line2: "BookMarks",
                image: 4,
              ),
              GridCard(
                image: 5,
                line1: "Attempt Incorrect",
                line2: "Questions",
              ),
              GridCard(
                image: 6,
                line1: "Performance",
                line2: "Summary",
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              GridCard(
                line1: "3 Years UPSC ",
                line2: "Question Papers",
                image: 1,
              ),
              GridCard(
                image: 2,
                line1: "Previous 25 Year",
                line2: "Question Papers",
              ),
            ],
          )
        ],
      ),
    );
  }
}

class GridCard extends StatelessWidget {
  final String line1, line2;
  final int image;
  GridCard({this.line1, this.line2, this.image});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 115,
        height: 130,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Image(
                image: AssetImage("assets/$image.png"),
              ),
            ),
            Text(
              line1,
              style: TextStyle(fontSize: 13),
            ),
            Text(
              line2,
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
