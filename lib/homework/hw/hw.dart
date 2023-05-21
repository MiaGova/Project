import 'package:flutter/material.dart';

import 'hw2.dart';
class hw extends StatefulWidget {
  const hw({Key? key}) : super(key: key);

  @override
  State<hw> createState() => _hwState();
}

class _hwState extends State<hw> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10,),
            Row(
              children: const [
                Icon(Icons.shopping_cart_outlined,color: Colors.red,size: 35,),
                Text('Sebet',style: TextStyle(color: Colors.red,fontSize: 35),),
              ],
            ),
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(230, 230, 230, 1)),
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Haryt gözle",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(104, 109, 118, 1)),
                  ),
                  Icon(
                    Icons.search,
                    color: Color.fromRGBO(104, 109, 118, 1),
                  )
                ],
              ),
            ),
            Row(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10,right: 10)),
                    ElevatedButton(onPressed: (){
                      debugPrint('kategoriyalar basyldy');
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(230, 230, 230, 1),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.category_outlined,color: Colors.black,),
                          Text('Kategoriyalar',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(left: 50,right: 10)),
                    ElevatedButton(onPressed: (){
                      debugPrint('brendler basyldy');
                    },
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(230, 230, 230, 1),
                      ),
                      child: Row(
                        children: [
                          Icon(Icons.label_outline,color: Colors.black,),
                          Text('Brendler',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(height: 30,),
                Text('Arzanladyshlar',style: TextStyle(fontSize: 20),),
                TextButton(onPressed: (){
                  debugPrint('Back');
                }, child: Row(
                  children: [
                    Text('ahlisini gor',style: TextStyle(fontSize: 20,color: Colors.red,),),
                    Icon(Icons.arrow_right_alt,color: Colors.red,)
                  ],
                ))
              ],
            ),
            GestureDetector(
              onTap: ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
                return hw2 ();
              })),
              child: Padding(padding: EdgeInsets.all(10),
                child: Image.asset('images/taze.jpg'),
              ),
            ),
            Text('Taze ay shohlat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
            Text('50 manat',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red),),
            SizedBox(height: 10,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 10,),
                  count ==  0 ? GestureDetector(
                    onTap: (){
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.shopping_basket_outlined,color: Colors.red,),
                          Text('Sebede gos',style: TextStyle(color: Colors.red),)
                        ],
                      ),
                    ),
                  ) : Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                count--;
                              });
                            },
                            child: Text('-')
                        ),
                        Text('$count sany'),
                        GestureDetector(
                            onTap: (){
                              setState(() {
                                count++;
                              });
                            },
                            child: Text('+')
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




