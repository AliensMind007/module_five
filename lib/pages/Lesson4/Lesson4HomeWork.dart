import 'package:flutter/material.dart';
import 'package:module_five/pages/HomePage.dart';
class Lesson4HomeWork extends StatefulWidget {
  const Lesson4HomeWork({Key? key}) : super(key: key);
  static const String id = "Lesson4HomeWork";
  @override
  _Lesson4HomeWorkState createState() => _Lesson4HomeWorkState();
}

class _Lesson4HomeWorkState extends State<Lesson4HomeWork> {
  PageController controller = PageController(initialPage: 0);

  int _selectedIndex = 0;
  List images = [
    "https://i.ytimg.com/vi/y5JrgsydtQw/maxresdefault.jpg",
    "https://cms-assets.tutsplus.com/cdn-cgi/image/width=630/uploads/users/523/posts/30871/image/adding-the-remaining-crystals-to-the-wooden-base.png",
    "https://i.ytimg.com/vi/ATvnMdMz2w4/maxresdefault.jpg"
  ];
  List text1 = ["Learn From Experts", "Something", "Find video Courses"];
  List text2 = [
    "The worlds fastes aPP. \nIWassap bro are u good",
    "This app delivers great, \nfastest than any other application",
    "This app is free forever. No ads. \nNo subscription fees.",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
 elevation: 0.0,


      ),
      body: Container(
        color: Colors.white,
        child: Column(children: [
          Expanded(flex: 8,
            child: Container(

              child: PageView.builder(
                onPageChanged: (index) {
                  setState(() {
                    _selectedIndex = index;
                  });

                },
                itemCount: text1.length,
                itemBuilder: (context, index) {
                  return animationFun(index);
                },

              ),
            ),
          ),
          Expanded(flex: 1,
            child: Stack(
                children:[ Container(
                  child: Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(text1.length, (index) {
                      return AnimatedContainer(
                        duration: Duration(milliseconds: 500),
                        curve: Curves.linear,
                        margin: EdgeInsets.all(2),
                        height: 5,
                        width: _selectedIndex == index ? 25 : 5,
                        decoration: BoxDecoration(
                          //shape: BoxShape.circle,
                          borderRadius: BorderRadius.circular(5),
                          color: _selectedIndex == index
                              ? Colors.red.shade300
                              : Colors.red.shade300,
                        ),
                      );
                    },),
                  ),
                ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(

                        padding: EdgeInsets.only(right: 20),
                        child: TextButton(
                            onPressed: (){
                              Navigator.pushNamed(context,HomePage.id);
                            },
                            child: (_selectedIndex==2) ? Text("Skip",style: TextStyle(color: Colors.red.shade300,fontSize: 20),):Text(""),),),
                    ],
                  )
                ] ),
          ),
        ]),
      ),
    );
  }

  Widget animationFun(int index) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [


          Text(
            text1[index],
            style: TextStyle(
                fontSize: 35, fontWeight: FontWeight.bold, color: Colors.red.shade300,),
          ),
          SizedBox(height: 30,),
          Text(
            text2[index],
            style: TextStyle(fontSize: 20, color: Colors.grey),
            textAlign: TextAlign.center,
          ),

          Container(
            padding: EdgeInsets.all(40),
            child: Image(
              image: NetworkImage(images[index]),
            ),
          ),
        ],
      ),
    );
  }
}
