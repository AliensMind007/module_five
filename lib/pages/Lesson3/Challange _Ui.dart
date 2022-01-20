import 'package:flutter/material.dart';

class ChallangeUi extends StatefulWidget {
  const ChallangeUi({Key? key}) : super(key: key);
  static const String id = "ChallangeUI";

  @override
  _ChallangeUiState createState() => _ChallangeUiState();
}

class _ChallangeUiState extends State<ChallangeUi> {  int indexAnimation=0;
List text1=[
  "Your favourite Dishes","Powerful","Something"
];
List text2=[
  "The worlds fastest messaging app. \nIt is free and secure",
  "Telegrams delivers messages, \nfastest than any other application",
  "Telegram is free forever. No ads. \nNo subscription fees.",

];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.deepOrange,
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.only(top: 100),
                child: Text(
                  "Your Logo",
                  style: TextStyle(fontSize: 35, color: Colors.white),
                ),
              ),
            ),
            SizedBox(height: 200,),
            Container(
                height: 180,
                child: PageView.builder(
                  onPageChanged: (index){
                    setState(() {
                      indexAnimation = index;
                    });
                  },
                  itemCount: text1.length,
                  itemBuilder: (context,index){
                    return animationFun(index);
                  },)
            ),Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(text1.length, (index) {
                  return AnimatedContainer(
                    duration: Duration(seconds: 1),
                    curve: Curves.linear,
                    margin: EdgeInsets.all(2),
                    height: 9,
                    width: indexAnimation==index ? 9: 9,
                    decoration: BoxDecoration(
                      //shape: BoxShape.circle,
                      borderRadius: BorderRadius.circular(5),
                      color: indexAnimation==index ? Colors.white: Colors.orangeAccent,
                    ),
                  );
                })
            ),
            SizedBox(height: 10,),
            Expanded(
              child: Container(
width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white24,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30),),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    MaterialButton(onPressed:(){},
                      color: Colors.green,minWidth: 300,
                      height: 50,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    child: Text("Get started"),),
                    SizedBox(height: 25,),

                      MaterialButton(onPressed: (){},height: 50,minWidth: 300, child: Text("Login"), color: Colors.grey.shade700,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),),

                  ],
                ),
              ),
            )

          ],
        ),
      ),
    );
  } Widget animationFun(int index){
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text1[index],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),),
        SizedBox(height: 20,),
        Text(text2[index],style: TextStyle(fontSize: 17,color: Colors.white),textAlign: TextAlign.center,),
      ],
    ),
  );
}
}
