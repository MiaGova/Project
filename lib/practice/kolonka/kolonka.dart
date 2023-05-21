import 'package:flutter/material.dart';


void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}

class MyWidget extends StatefulWidget {
  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool checkLike = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.transparent,
              leading: Container(
                width: 35,
                height: 35,
                margin: EdgeInsets.only(left: 10, top: 5, bottom: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Color.fromRGBO(221, 221, 221, 1))),
                child: Icon(
                  Icons.arrow_back_ios_new_outlined,
                  color: Color.fromRGBO(89, 89, 89, 1),
                ),
              ),
              title: Text(
                "Smart Home",
                style: TextStyle(
                    fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
              ),
              actions: [
                InkWell(
                  onTap: () {
                    checkLike = !checkLike;
                    setState(() {});
                  },
                  child: checkLike == false
                      ? Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  )
                      : Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 10, right: 15),
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        "images/Rectangle 79.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  SizedBox(
                      width: double.infinity,
                      height: 71,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.only(left: 7, right: 7),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                  "images/kol 1.jpg"),
                            ),
                          );
                        },
                        itemCount: 10,
                      )),
                  Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 8, right: 5),
                        child: Text(
                          "200",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w700,
                              color: Color.fromRGBO(0, 54, 134, 1)),
                        ),
                      ),
                      Container(
                        width: 25,
                        height: 12,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Color.fromRGBO(212, 229, 255, 1)),
                        child: Center(
                          child: Text(
                            "TMT",
                            style: TextStyle(
                                fontSize: 8,
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 54, 134, 1)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      "Yandex Home Alisa for home installation, for office and home and etc.",
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 10),
                    child: Row(
                      children: [
                        Icon(Icons.star_border),
                        Icon(Icons.star_border),
                        Icon(Icons.star_border),
                        Icon(Icons.star_border),
                        Icon(Icons.star_border),
                      ],
                    )
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(bottom: 20),
                    height: 151,
                    decoration: BoxDecoration(
                        border: Border.symmetric(
                            horizontal:
                            BorderSide(color: Color.fromRGBO(221, 221, 221, 1)))),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Variations",
                                style: TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.w500),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "6 var",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500,
                                        color: Color.fromRGBO(3, 103, 255, 1)),
                                  ),
                                  Icon(
                                    Icons.arrow_forward,
                                    color: Color.fromRGBO(3, 103, 255, 1),
                                    size: 15,
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            width: double.infinity,
                            height: 71,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (BuildContext context, int index) {
                                return Padding(
                                  padding: const EdgeInsets.only(left: 7, right: 7),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8),
                                    child: Image.asset(
                                        "images/kol2.jpg"),
                                  ),
                                );
                              },
                              itemCount: 6,
                            )
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Text(
                      "Recomendation",
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10.02,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(246, 246, 246, 1)
                            ),
                            width: 155.48,
                            height: 220.46,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('images/image-product.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Positioned(child: Container(
                                          child: Container(
                                            width: 35,
                                            height: 19,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(2),
                                                color: Color.fromRGBO(219,233,255,1)),
                                            child: Center(
                                              child: Text(
                                                "new",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.w700,
                                                    color: Color.fromRGBO(110, 98, 249, 1)),
                                              ),
                                            ),
                                          ),
                                        )
                                        ),
                                    ),
                                  ],
                                ),
                                Text('Xiaomi Wi-Fi Router wire',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Row(
                                  children: [
                                    Text('200',style: TextStyle(fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color:Color.fromRGBO(0, 54, 134, 1) ),),
                                    Container(
                                      width: 25,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color.fromRGBO(212, 229, 255, 1)),
                                      child: Center(
                                        child: Text(
                                          "TMT",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(0, 54, 134, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star_border_outlined,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.02,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(246, 246, 246, 1)
                            ),
                            width: 155.48,
                            height: 220.46,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('images/image-product.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Positioned(child: Container(
                                        child: Container(
                                          width: 35,
                                          height: 19,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(2),
                                              color: Color.fromRGBO(219,233,255,1)),
                                          child: Center(
                                            child: Text(
                                              "new",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(110, 98, 249, 1)),
                                            ),
                                          ),
                                        ),
                                      )
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Xiaomi Wi-Fi Router wire',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Row(
                                  children: [
                                    Text('200',style: TextStyle(fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color:Color.fromRGBO(0, 54, 134, 1) ),),
                                    Container(
                                      width: 25,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color.fromRGBO(212, 229, 255, 1)),
                                      child: Center(
                                        child: Text(
                                          "TMT",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(0, 54, 134, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star_border_outlined,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10.02,
                      ),
                      Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(left: 20,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(246, 246, 246, 1)
                            ),
                            width: 155.48,
                            height: 220.46,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('images/image-product.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Positioned(child: Container(
                                        child: Container(
                                          width: 35,
                                          height: 19,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(2),
                                              color: Color.fromRGBO(219,233,255,1)),
                                          child: Center(
                                            child: Text(
                                              "new",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(110, 98, 249, 1)),
                                            ),
                                          ),
                                        ),
                                      )
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Xiaomi Wi-Fi Router wire',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Row(
                                  children: [
                                    Text('200',style: TextStyle(fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color:Color.fromRGBO(0, 54, 134, 1) ),),
                                    Container(
                                      width: 25,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color.fromRGBO(212, 229, 255, 1)),
                                      child: Center(
                                        child: Text(
                                          "TMT",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(0, 54, 134, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star_border_outlined,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10.02,
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20,),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromRGBO(246, 246, 246, 1)
                            ),
                            width: 155.48,
                            height: 220.46,
                            child: Column(
                              children: [
                                Stack(
                                  children: [
                                    Image.asset('images/image-product.png'),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 120),
                                      child: Positioned(child: Container(
                                        child: Container(
                                          width: 35,
                                          height: 19,
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(2),
                                              color: Color.fromRGBO(219,233,255,1)),
                                          child: Center(
                                            child: Text(
                                              "new",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w700,
                                                  color: Color.fromRGBO(110, 98, 249, 1)),
                                            ),
                                          ),
                                        ),
                                      )
                                      ),
                                    ),
                                  ],
                                ),
                                Text('Xiaomi Wi-Fi Router wire',style: TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                ),),
                                Row(
                                  children: [
                                    Text('200',style: TextStyle(fontSize: 16,
                                        fontWeight: FontWeight.w800,
                                        color:Color.fromRGBO(0, 54, 134, 1) ),),
                                    Container(
                                      width: 25,
                                      height: 12,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(2),
                                          color: Color.fromRGBO(212, 229, 255, 1)),
                                      child: Center(
                                        child: Text(
                                          "TMT",
                                          style: TextStyle(
                                              fontSize: 8,
                                              fontWeight: FontWeight.w700,
                                              color: Color.fromRGBO(0, 54, 134, 1)),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                    Icon(Icons.star_border_outlined,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  )
                ]
                )
            ),

          ],
        ));
  }
}
