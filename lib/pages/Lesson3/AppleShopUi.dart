import 'package:flutter/material.dart';

class AppleShopUi extends StatefulWidget {
  const AppleShopUi({Key? key}) : super(key: key);
  static const String id = "AppleShopUi";

  @override
  _AppleShopUiState createState() => _AppleShopUiState();
}

class _AppleShopUiState extends State<AppleShopUi> {
  bool isPressed = true;

  // void button(){
  //   if(isPressed==true){
  //     icon:Icon(Icons.star);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text("Apple Products"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          Center(
              child: Container(
            margin: EdgeInsets.only(right: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.grey,
            ),
            child: Center(
                child: Text(
              "7",
              style: TextStyle(fontSize: 20),
            )),
            height: 30,
            width: 30,
          ))
        ],
      ),
      body: Container(
        color: Colors.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                margin: EdgeInsets.all(20),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://images.macrumors.com/t/r24wJj7pUm4tI7xU-ff5GfCEX8s=/1600x900/smart/article-new/2020/04/productred-apple-products.png"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      height: 25,
                    ),
                    Text(
                      "Lifestyle sale",
                      style: TextStyle(fontSize: 35, color: Colors.white),
                    ),
                    Container(
                      width: 300,
                      height: 60,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text("Shop now"),
                      ),
                    )
                  ],
                ),
              ),
              GridView.count(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                childAspectRatio: 1.0,
                padding: const EdgeInsets.all(10.0),
                mainAxisSpacing: 20.0,
                crossAxisSpacing: 20.0,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://htstatic.imgsmail.ru/pic_image/94fe38164df97866d62459cb8c765cdf/840/436/1257187/"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        icon: Icon(
                          (isPressed == false) ? Icons.star_border : Icons.star,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://upscalelivingmag.nyc3.cdn.digitaloceanspaces.com/wp-content/uploads/2021/06/macbook-pro-and-iphone-apple-products.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        icon: Icon(
                          (isPressed == false) ? Icons.star_border : Icons.star,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://9to5mac.com/wp-content/uploads/sites/6/2020/09/Apple-Watch-Series-6-product-red-12-1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                        padding: EdgeInsets.all(5),
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            setState(
                              () {
                                isPressed = !isPressed;
                              },
                            );
                          },
                          icon: Icon(
                            (isPressed == false)
                                ? Icons.star_border
                                : Icons.star,
                            color: Colors.yellow,
                            size: 35,
                          ),
                        )),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.gannett-cdn.com/-mm-/0caef49784e8e807c1b10905491c020013162339/c=0-0-791-445/local/-/media/2021/03/08/USATODAY/usatsports/Reviewed.com-RvEW-26886-macbook-air.jpg?auto=webp&format=pjpg&width=1200"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          setState(() {
                            isPressed = !isPressed;
                          });
                        },
                        icon: Icon(
                          (isPressed == false) ? Icons.star_border : Icons.star,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://www.re-thinkingthefuture.com/wp-content/uploads/2021/08/A4907-10-Upcoming-Apple-products-built-and-conceptual-Image-4.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              isPressed = !isPressed;
                            },
                          );
                        },
                        icon: Icon(
                          (isPressed == false) ? Icons.star_border : Icons.star,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white,
                      image: DecorationImage(
                        image: NetworkImage(
                            "https://gadgetshelp.com/wp-content/uploads/images/htg/content/uploads/2019/08/ximg_5d5c5e467fe0f.jpg.pagespeed.gp+jp+jw+pj+ws+js+rj+rp+rw+ri+cp+md.ic.tkb7NuKo8K.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                        onPressed: () {
                          setState(
                            () {
                              isPressed = !isPressed;
                            },
                          );
                        },
                        icon: Icon(
                          (isPressed == false) ? Icons.star_border : Icons.star,
                          color: Colors.yellow,
                          size: 35,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
