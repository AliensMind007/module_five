import 'package:shake/shake.dart';
import 'package:flutter/material.dart';
import 'package:module_five/pages/HomePage.dart';

class IntroUi extends StatefulWidget {
  const IntroUi({Key? key}) : super(key: key);
  static const String id = "InrtoUi";

  @override
  _IntroUiState createState() => _IntroUiState();
}

class _IntroUiState extends State<IntroUi> {
  int _selectedIndex = 0;
  PageController controller = PageController(initialPage: 0);
  List images = [
    "https://i.ytimg.com/vi/y5JrgsydtQw/maxresdefault.jpg",
    "https://cms-assets.tutsplus.com/cdn-cgi/image/width=630/uploads/users/523/posts/30871/image/adding-the-remaining-crystals-to-the-wooden-base.png",
    "https://i.ytimg.com/vi/ATvnMdMz2w4/maxresdefault.jpg"
  ];
  List text1 = ["Learn From Experts", "Something", "Somebody"];
  List text2 = [
    "The worlds fastes aPP. \nIWassap bro are u good",
    "This app delivers great, \nfastest than any other application",
    "This app is free forever. No ads. \nNo subscription fees.",
  ];void initState() {
    super.initState();
    ShakeDetector detector = ShakeDetector.autoStart(onPhoneShake: () {

      Navigator.pushNamed(context, HomePage.id);
      // Do stuff on phone shake
    });
    // To close: detector.stopListening();
    // ShakeDetector.waitForStart() waits for user to call detector.startListening();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        centerTitle: true,
        actions: [
          (_selectedIndex != 2)
              ? TextButton(
                  onPressed: () {
                    setState(() {
                      _selectedIndex = 2;
                    });
                    controller.animateToPage(_selectedIndex, duration: Duration(milliseconds: 300), curve: Curves.bounceIn);
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                )
              : TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(HomePage.id);
                  },
                  child: const Text(
                    "Next",
                    style: TextStyle(color: Colors.green, fontSize: 18),
                  ),
                ),
        ],
      ),
      body: Container(
        color: Colors.black,
        child: Column(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                child: PageView.builder(
                  controller: controller,
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
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        text1.length,
                        (index) {
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
                                  ? Colors.green.shade600
                                  : Colors.green.shade600,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget animationFun(int index) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(40),
            child: Image(
              image: NetworkImage(images[index]),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            text1[index],
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.green.shade600),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            text2[index],
            style: TextStyle(fontSize: 17, color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
