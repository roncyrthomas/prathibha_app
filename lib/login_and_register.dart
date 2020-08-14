import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:prathibhaapp/constants.dart';
import 'package:prathibhaapp/homepage.dart';

class LoginContainer extends StatelessWidget {
  final Function func;
  LoginContainer({this.func});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 400,
      color: Color(kContainerColor),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "Re-Send Email Verification",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            width: 270,
            height: 40,
            child: FlatButton(
              color: Colors.black,
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                Navigator.pushNamed(context, HomePage.id);
              },
            ),
          ),
          InkWell(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(top: 5, left: 15.0),
                child: Text(
                  "Forgot Password",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            height: 70,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15.0),
              child: Text(
                "Dont have an Account?",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  "New User? Create an Account",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            onTap: func,
          ),
        ],
      ),
    );
  }
}

class RegisterContainer extends StatelessWidget {
  final bool active;
  RegisterContainer(this.active);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 620,
      color: Color(kContainerColor),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Name",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "RE-Enter Password",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Phone Number",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color(kContainerColor),
                      border: Border.all(color: Colors.black26, width: 2),
                    ),
                  ),
                ),
              ),
              Container(
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Choose Photo",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w800),
                    ),
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Text(
                "Answer Simple Math 2 + 3 = ?",
                style: TextStyle(color: Colors.black38),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter Security code shown above",
                    border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: 150,
            color: Colors.black,
            child: FlatButton(
              onPressed: () {},
              child: Text(
                "Submit",
                style: TextStyle(color: Colors.white, fontSize: 17),
              ),
            ),
          )
        ],
      ),
    );
  }
}
