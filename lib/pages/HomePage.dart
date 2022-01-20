import 'package:flutter/material.dart';
import 'package:module_five/pages/Lesson3/AppleShopUi.dart';
import 'package:module_five/pages/Lesson3/Challange%20_Ui.dart';
import 'package:module_five/pages/Lesson3/HomeWork.dart';
import 'package:module_five/pages/lesson2/LoginPage.dart';
import 'package:module_five/pages/lesson2/SignUpPage.dart';
import 'package:module_five/pages/lesson2/challange1.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const String id = "HomePAGE";

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation: 0.0,
        title: Text(
          "5 Module Catalog",
          style: TextStyle(color: Colors.deepOrangeAccent),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
      ),
      extendBodyBehindAppBar: true,
      body: Container(
        color: Colors.grey.shade900,
        child: CustomScrollView(
          primary: false,
          slivers: <Widget>[
            SliverPadding(
              padding: const EdgeInsets.only(
                  top: 80, bottom: 80, left: 20, right: 20),
              sliver: SliverGrid.count(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, LoginPage.id);
                      },
                      child: Text(
                        "Login Page",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepOrangeAccent),
                      ),
                    ),
                    color: Colors.black,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ChallangeBar.id);
                      },
                      child: Text(
                        "TextSpan Page",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepOrangeAccent),
                      ),
                    ),
                    color: Colors.black,
                  ),
                  Container(
                    padding: const EdgeInsets.all(8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SignUpPage.id);
                      },
                      child: Text(
                        "Sign Up Page",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepOrangeAccent),
                      ),
                    ),
                    color: Colors.black,
                  ), Container(
                    padding: const EdgeInsets.all(8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppleShopUi.id);
                      },
                      child: Text(
                        "Lesson3 AppleShopUi",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepOrangeAccent),
                      ),
                    ),
                    color: Colors.black,
                  ),Container(
                    padding: const EdgeInsets.all(8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, ChallangeUi.id);
                      },
                      child: Text(
                        "Lesson3 AppleShopUi",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepOrangeAccent),
                      ),
                    ),
                    color: Colors.black,
                  ),Container(
                    padding: const EdgeInsets.all(8),
                    child: MaterialButton(
                      onPressed: () {
                        Navigator.pushNamed(context, HomeWork.id);
                      },
                      child: Text(
                        "Lesson3 HomeWork",
                        style: TextStyle(
                            fontSize: 20, color: Colors.deepOrangeAccent),
                      ),
                    ),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
