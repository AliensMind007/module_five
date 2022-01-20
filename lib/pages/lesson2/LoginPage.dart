import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id = "LoginPage";

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
              Colors.green.shade900,
              Colors.green.shade500,
            ])),
        child: Column(
          children: [

                Container(
                  height: 210,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(fontSize: 35, color: Colors.white),
                      ),
                      Text(
                        "Wellcome back",
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      )
                    ],
                  ),
                ),
            Expanded(
              flex: 3,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(65),
                    topRight: Radius.circular(65),
                  ),
                ),
                child: SingleChildScrollView(
                  // physics: NeverScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        height: 120,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.10),
                              blurRadius: 20,
                              spreadRadius: 10,
                              offset: const Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextField(

                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "Email",
                                isCollapsed: false,
                                hintStyle: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Divider(
                              color: Colors.black45,height: 1,
                            ),
                            TextField(
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: InputBorder.none,
                                hintText: "Password",

                                hintStyle: TextStyle(color: Colors.grey),
                                isCollapsed: false,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: MaterialButton(
                            onPressed: () {},
                            height: 50,
                            minWidth: 250,
                            color: Colors.green.shade600,
                            shape: StadiumBorder(),
                            child: Text(
                              "Login",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Text(
                        "Log in with SNS",
                        style: TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          MaterialButton(
                            onPressed: () {},
                            color: Colors.blue,
                            minWidth: 150,
                            height: 45,
                            shape: StadiumBorder(),
                            child: Text(
                              "Facebook",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          MaterialButton(
                            color: Colors.black,
                            onPressed: () {


                            },
                            minWidth: 150,
                            height: 45,
                            shape: StadiumBorder(),
                            child: Text(
                              "Github",
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
