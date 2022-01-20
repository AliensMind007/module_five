import 'package:flutter/material.dart';

class HomeWork extends StatefulWidget {
  const HomeWork({Key? key}) : super(key: key);
  static const String id = "HomeWork";

  @override
  _HomeWorkState createState() => _HomeWorkState();
}

class _HomeWorkState extends State<HomeWork> {
  bool _ispressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent,
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
              color: Colors.orangeAccent,
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
        elevation: 0.0,
      ),
      body: Container(
        color: Colors.deepOrangeAccent,
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
                            "https://img.tek.id/img/content/2018/03/02/3621/usia-produk-apple-hanya-4-tahun-ini-penjelasannya-demvPvAbZ5.jpg"),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 15,),
              Text("Lifestyle sale",style: TextStyle(fontSize: 35,color: Colors.white),),
              Container(
                width: 300,
                height: 60,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                ),

                child: MaterialButton(
                  onPressed: () {}, child: Text("Shop now"),),

              )
            ],
          ),
        ),
        GridView.count(

          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          crossAxisCount: 1,
          childAspectRatio: 1.0,
          padding: const EdgeInsets.all(20.0),
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://static1.makeuseofimages.com/wordpress/wp-content/uploads/2020/02/ipad-macbook.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.topRight,
                child:IconButton(
                  onPressed: (){
                    setState(() {
                      _ispressed = !_ispressed;
                    });
                  },
                  icon: Icon((_ispressed == false) ? Icons.favorite_border : Icons.favorite,size: 40,color: Colors.redAccent,),

                ),
              ),),  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://mlbtofxzvytu.i.optimole.com/vf0BlP4-lwEZVuwl/w:602/h:401/q:90/https://techrant.blog/wp-content/uploads/2018/12/apple-ecosystem.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      _ispressed = !_ispressed;
                    });
                  },
                  icon: Icon((_ispressed == false) ? Icons.favorite_border : Icons.favorite,size: 40,color: Colors.redAccent,),

                ),
              ),),  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cellassistenciatecnicabh.com.br/wp-content/uploads/2020/08/Problemas-mais-comuns-no-iPad-Apple.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      _ispressed = !_ispressed;
                    });
                  },
                  icon: Icon((_ispressed == false) ? Icons.favorite_border : Icons.favorite,size: 40,color: Colors.redAccent,),

                ),
              ),),]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
