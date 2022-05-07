import "package:flutter/material.dart";
import "package:animations/animations.dart";
import "page.dart";


class Main extends StatefulWidget {
  const Main({ Key? key }) : super(key: key);

  @override
  State<Main> createState() => _MainState();
}

class _MainState extends State<Main> {

  final List<Color> listcolor = [
    Color.fromRGBO(251, 206, 220, 1),
    Color.fromRGBO(255, 224, 142, 1),

  ];
  final List<String> filepaths = [
    "assets/images/icecream1.png",
    "assets/images/icecream2.png"
  ];
  final List<String> titles = [
    "Fraise Ice Cream",
    "Mandarine"
  ];
  final List<String> subscription = [
    "Strawberry Flovour Sweet Ice Cream",
    "Caramel Flovour Sweet Ice Cream"
  ];
  final List<String> price = [
    r"$2.50",
    r"$3.50"
  ];
  final List<String> newinfilepath = [
    "assets/images/newin.png",
    "assets/images/newin2.png"
  ];
  final List<String> Newintitle = [
    "Caramel Flavor Dessert",
    "Framboise Flavor Dessert"
  ];
  final List<String> newinprice = [
    r"$4.50",
    r"$3.50"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Image.asset('assets/images/profilepng.png')
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/shopbag.png")
          )
        ]
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.only(top: 40, left: 25),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("Hello Diana!", style: TextStyle(fontFamily: "Gilroy", fontSize: 24, fontWeight: FontWeight.w500)),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text("What flavour do you want today?", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, fontWeight: FontWeight.w400, color: Colors.grey))
                    )

                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 40, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("Popular", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 25),
                      child: GestureDetector(
                        child: Image.asset("assets/images/menu.png")
                      )
                    )
                  ]
                )
              ),
              Container(
                height: 313.62,
                margin: EdgeInsets.only(top: 30),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return OpenContainer(closedBuilder: (context, action) => Container(
                      height: 313.62,
                      width: 222.27,
                      margin: EdgeInsets.only(left: 25),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: listcolor[i]
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: Image.asset(filepaths[i])
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(top: 20, left: 20),
                            child: Text(titles[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 18, fontWeight: FontWeight.w500))
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only( left: 20),
                            child: Text(subscription[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 12, fontWeight: FontWeight.w500, color: Color.fromRGBO(0,0,0,0.5)))
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 30, left: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Text(price[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 17, fontWeight: FontWeight.w500))
                                ),
                                Container(
                                  width: 32,
                                  height: 32,
                                  margin: EdgeInsets.only(right: 20),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: Colors.white,
                                  ),
                                  child: Center(child: Text("+", style: TextStyle(fontFamily: "Gilroy", fontSize: 26, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 87, 148, 1))))
                                )
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    openBuilder: (context, action) => Pages(filepaths[i], titles[i], price[i]),
                    transitionType: ContainerTransitionType.fadeThrough,);
                  }
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 30, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Text("New in", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 30),
                      child: GestureDetector(
                        child: Text("See all", style: TextStyle(fontFamily: "Gilroy", fontSize: 14, fontWeight: FontWeight.w400, color: Color.fromRGBO(255, 148, 187, 1)))
                      )
                    )
                  ]
                )
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: 2,
                  itemBuilder: (context, i) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      height: 90,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Image.asset(newinfilepath[i])
                          ),
                          Container(
                            alignment: Alignment.centerLeft,
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(Newintitle[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 17, color: Colors.black, fontWeight: FontWeight.w500))
                                ),
                                Container(
                                  alignment: Alignment.centerLeft,
                                  child: Text(newinprice[i], style: TextStyle(fontFamily: "Gilroy", fontSize: 14, fontWeight: FontWeight.w500, color: Color.fromRGBO(255, 122, 170, 1)))
                                )
                              ]
                            )

                          ),
                          Container(
                            child: GestureDetector(
                              child: Image.asset("assets/images/heart.png")
                            )
                          )
                        ]
                      )

                    );
                  }
                )
              )
              

            ]
          )
        )
    ),
      ));
  }
}