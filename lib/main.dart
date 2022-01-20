import 'package:flutter/material.dart';
import 'package:module_five/pages/HomePage.dart';
import 'package:module_five/pages/Lesson3/AppleShopUi.dart';
import 'package:module_five/pages/Lesson3/Challange%20_Ui.dart';
import 'package:module_five/pages/Lesson3/HomeWork.dart';
import 'package:module_five/pages/Lesson4/Lesson4HomeWork.dart';
import 'package:module_five/pages/Lesson4/IntroUi.dart';
import 'package:module_five/pages/lesson2/LoginPage.dart';
import 'package:module_five/pages/lesson2/SignUpPage.dart';
import 'package:module_five/pages/lesson2/challange1.dart';
void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        LoginPage.id:(context)=>LoginPage(),
        SignUpPage.id:(context)=>SignUpPage(),
        ChallangeBar.id:(context)=>ChallangeBar(),
        AppleShopUi.id:(context)=>AppleShopUi(),
        ChallangeUi.id:(context)=>ChallangeUi(),
        HomeWork.id:(context)=>HomeWork(),
        IntroUi.id:(context)=>IntroUi(),
        Lesson4HomeWork.id:(context)=>Lesson4HomeWork(),
      },
    );
  }
}
