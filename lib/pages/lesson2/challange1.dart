import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ChallangeBar extends StatefulWidget {
  const ChallangeBar({Key? key}) : super(key: key);
  static const String id = "ChallangePage";

  @override
  _ChallangeBarState createState() => _ChallangeBarState();
}

class _ChallangeBarState extends State<ChallangeBar> {
  bool isLoading = false;
  String nol = "one #two three #four five #six seven #eight nine #ten";

  void split(){

  }
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
      appBar: AppBar(
        title: Text("Instagram"),
        centerTitle: true,
      ),
      body: Container(
        child: Center(
          child: RichText(
            text: TextSpan(
              text: "well divide the",
              style: TextStyle(color: Colors.black, fontSize: 20),
              children: [
                TextSpan(
                    text: "#text",
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        fireToast("Hello mf");
                      }),
                TextSpan(
                  text: "into",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                    text: "#two",
                    style: TextStyle(
                        color: Colors.blueAccent, fontWeight: FontWeight.bold),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        fireToast("Hello mf two");
                      }),
                TextSpan(
                  text: "into",
                  style: TextStyle(color: Colors.black),
                ),
                TextSpan(
                  text: "three",
                  style: TextStyle(
                      color: Colors.blueAccent, fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      fireToast("Hello my frend three");
                    },
                ),
                TextSpan(
                  text: "parts",
                  style: TextStyle(color: Colors.black),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
