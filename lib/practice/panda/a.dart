import 'package:flutter/material.dart';
import 'b.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  bool a = true;
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Icon(Icons.search,color: Colors.black,),
          SizedBox(width: 20,),
          Icon(Icons.more_vert,color: Colors.black,),
          SizedBox(width: 15,)
        ],
        backgroundColor: Colors.white,
        title: Text('Smart Home',style: TextStyle(color: Colors.black,fontSize: 20),),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15
              ,top: 10,bottom: 5),
          child: Container(
          width: 35,
            height: 35,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Color.fromRGBO(221, 221, 221, 1),
            ),
          ),
    child: Center(child: Icon(Icons.arrow_back_ios,color: Colors.black,)),
      ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(delegate: SliverChildListDelegate([
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only (top: 15,left: 20,right: 10),
                  child: Container(
                    width: 260,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 246, 246, 1),
                      border: Border.all(color: Color.fromRGBO(221, 221, 221, 1)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.menu),
                        Text('Filter',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),)
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top:15),
                  child: InkWell(
                    onTap: (){
                      a=!a;
                      setState(() {
                        
                      });
                    },
                    child: Container(
                      width: 50,
                        height: 40,
                        decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 246, 246, 1),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Color.fromRGBO(231, 231, 231, 1))
                    ),
                        child: Center(child: Icon(Icons.grid_view,color: Colors.black,),)),
                  )
                )
              ],
            )
          ])),
          a?
          SliverPadding(padding: EdgeInsets.only(top:20),
            sliver: SliverList(delegate: SliverChildBuilderDelegate(
                    (context,index)=>
                    Container(
                      width: 360,
                      height: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(237, 237, 237, 1)
                      ),
                      child: Card(
                        child: (Row(
                          children: [
                            Container(width: 100,
                              height: double.infinity,
                              child: Image.asset('images/kol2.jpg',fit: BoxFit.fill,),),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 20,top: 10),
                              child: Text('Yandex Home Alisa'),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 20,top: 5),
                                  child: Text('200',style: TextStyle(color: Color.fromRGBO(0, 54, 134, 1,),fontSize: 16,fontWeight: FontWeight.w800),),
                                ),
                                SizedBox(width: 4,),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Container(
                                    width: 25,
                                    height: 12,
                                    decoration: BoxDecoration(color: Color.fromRGBO(212, 229, 255, 1),borderRadius: BorderRadius.circular(3)),
                                  child: Center(child: Text('TMT',style: TextStyle(color: Color.fromRGBO(0, 54, 134, 1),fontSize: 8,fontWeight: FontWeight.w700),)),
                                  ),
                                )
                              ],
                            ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 15,left: 0),
                                  child: Container(
                                    width: 68,
                                    height: 21,
                                    decoration: BoxDecoration(color: Color.fromRGBO(212, 229, 255, 1),borderRadius: BorderRadius.only(topRight: Radius.circular(5))),
                                    child: Center(child: Text('1 year warranty',style: TextStyle(fontSize: 8),),),
                                  )
                                )
                              ],
                            ),

                          ],
                        )),
                      ),
                    ),
                childCount: 10)),):SliverGrid(delegate: SliverChildBuilderDelegate((context,index)=>Padding(
              padding: const EdgeInsets.only(top: 20,left: 10,right: 10),
              child: Container(
                width: 155,
                height: 220,
                decoration: BoxDecoration(color: Color.fromRGBO(246, 246, 246, 1),
                    borderRadius: BorderRadius.circular(10),border: Border.all(color: Color.fromRGBO(246, 246, 246, 1)),
              ),child: Column(
                children: [
                  Stack(
                    children: [
                      Image.asset('images/image-product.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 120),
                        child: Positioned(top: 0,right: 0,
                            child: Container(
                              child: Container(
                                width: 35,
                                height: 19,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5)),
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
                  Padding(
                    padding: const EdgeInsets.only(top: 9),
                    child: Text('Xiaomi Wi-Fi Router wire',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15,top: 4),
                    child: Row(
                      children: [
                        Text('200',style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w800,
                            color:Color.fromRGBO(0, 54, 134, 1) ),),
                        SizedBox(width: 4,),
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
                  ),
                  SizedBox(height: 12,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Row(
                      children: [
                        Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                        Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                        Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                        Icon(Icons.star,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                        Icon(Icons.star_border_outlined,size: 7,color: Color.fromRGBO(0, 54, 134, 1),),
                      ],
                    ),
                  )
                ],
              ),
          ),
          ),
              childCount: 10
              ),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(childAspectRatio: 0.7,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              maxCrossAxisExtent: 200),
          ),
        ],
      ),
    );
  }
}


