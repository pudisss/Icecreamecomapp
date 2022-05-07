import "package:flutter/material.dart";

class Pages extends StatefulWidget {
  final filepath;
  final title;
  final price;
  
  Pages(this.filepath, this.title, this.price);

  @override
  State<Pages> createState() => _PagesState(this.filepath, this.title, this.price, );
}

class _PagesState extends State<Pages> {
  final filepath;
  final title;
  final String price;

  final Color color1 = Color.fromRGBO(251, 206, 220, 1);
  final Color color2 = Color.fromRGBO(255, 224, 142, 1);

  final List<Color> gradient1 = [
    Color.fromRGBO(255, 148, 187, 1),
                            Color.fromRGBO(255, 72, 138, 1),
  ];
  final List<Color> gradient2 = [
    Color.fromRGBO(255, 224, 142, 1),
    Color.fromARGB(255, 249, 230, 178)
  ];
  

  int numbers = 1;
  _PagesState(this.filepath, this.title, this.price);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Image.asset("assets/images/Back Button.png")
        ),
        backgroundColor: title == "Fraise Cream" ? color1:color2,
        elevation: 0,
        actions: [
          GestureDetector(
            child: Image.asset("assets/images/whiteheart.png")
          )
        ]
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: title == "Fraise Cream" ? color1:color2,
        child: Column(
          children: [
            Container(
              width:328,
              height: 291,
              
              child: Image.asset(filepath)
            ),
              Expanded(
              child: Container(
                width: 375,
                height: 422,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      alignment: Alignment.centerLeft,
                      child: Text(title, style: TextStyle(fontFamily: "Gilroy", fontSize: 20, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 20, top: 5),
                      child: Text("Strawberry Flavour", style: TextStyle(fontFamily: "Gilroy", fontSize: 16, fontWeight: FontWeight.w500, color: Color.fromRGBO(0,0,0,0.38)))
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text((double.parse(price.substring(1, price.length)) * numbers).toString(), style: TextStyle(fontFamily: "Gilroy", fontSize: 20, fontWeight: FontWeight.w600, ))
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 25),
                            width: 90,
                            height: 40,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        numbers++;
                                      });
                                    },
                                    child: Text("+", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, ))
                                  )
                                ),
                                Container(
                                  child: Text(numbers.toString(), style: TextStyle(fontFamily: "Gilroy", fontSize: 20)),
                                ),
                                Container(
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        numbers--;
                                      });
                                    },
                                    child: Text("-", style: TextStyle(fontFamily: "Gilroy", fontSize: 20))
                                  )
                                )
                              ]
                            )
                          )
                        ]
                      )
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(top: 30, left: 20),
                      child: Text("Description", style: TextStyle(fontFamily: "Gilroy", fontSize: 18, fontWeight: FontWeight.w600))
                    ),
                    Container(
                      width: 315,
                      height: 80,
                      margin: EdgeInsets.only(top: 20),
                      child: Text("We have been loading up on the stone fruit and berries at the market. We have no self control to these summer gems. We have gross we can out of hand, our  Strawberry...", 
                      style: TextStyle(fontFamily: "Gilroy",fontSize: 14, color: Color.fromRGBO(0,0,0,0.5), fontWeight: FontWeight.w500))
                    ),
                    Container(
                      width: 315,
                      height: 56,
                      margin: EdgeInsets.only(top: 20),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: title == "Fraise Cream" ? gradient1:gradient2,
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        )
                      ),
                      child: Center(
                        child: Text("Buy Now", style: TextStyle(fontFamily: "Gilroy", fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white,))
                      )
                    )
                  ]
                )
              ),
            ),

          ]
        )

      )
    );
  }
}