import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/gestures.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);
  static const String id = "SignUpPage";

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool isLoading = false;

  void fireToast(String massage) {
    Fluttertoast.showToast(
        msg: massage,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 2,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: [
              Colors.grey.shade800,
              Colors.grey.shade500,
            ],
          ),
        ),
        child: Container(
          child: Column(
            children: [
              Container(
                height: 200,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 35),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  // crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          "Sign Up",
                          style: TextStyle(fontSize: 55, color: Colors.white),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Wellcome",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                flex: 3,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
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
                          height: 240,
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Fullname",
                                  hintStyle: TextStyle(color: Colors.grey),
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Email",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  isCollapsed: false,
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
                              ),
                              TextField(
                                decoration: InputDecoration(
                                  contentPadding:
                                      EdgeInsets.symmetric(horizontal: 10),
                                  border: InputBorder.none,
                                  hintText: "Phone",
                                  hintStyle: TextStyle(color: Colors.grey),
                                  isCollapsed: false,
                                ),
                              ),
                              Divider(
                                color: Colors.black45,
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
                              color: Colors.grey,
                              shape: StadiumBorder(),
                              child: Text(
                                "SignUp",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
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
                              minWidth: 120,
                              height: 45,
                              shape: StadiumBorder(),
                              child: Text(
                                "Facebook",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            MaterialButton(
                              color: Colors.redAccent,
                              onPressed: () {},
                              minWidth: 120,
                              height: 45,
                              shape: StadiumBorder(),
                              child: Text(
                                "Google",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            MaterialButton(
                              color: Colors.black,
                              onPressed: () {},
                              minWidth: 120,
                              height: 45,
                              shape: StadiumBorder(),
                              child: Text(
                                "Apple",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: RichText(
                            text: TextSpan(
                              text: "well divide the",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 20),
                              children: [
                                TextSpan(
                                  text: "#text",
                                  style: TextStyle(
                                      color: Colors.blueAccent,
                                      fontWeight: FontWeight.bold),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                      fireToast("Hello my frend");
                                    },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
