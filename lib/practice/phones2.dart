import 'package:flutter/material.dart';
class phones2 extends StatefulWidget {
  const phones2({Key? key}) : super(key: key);

  @override
  State<phones2> createState() => _phones2State();
}
class _phones2State extends State<phones2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(67, 128, 187, 1.0),
        appBar: AppBar(
          title:
              Text('Favorites',style: TextStyle(color: Colors.grey,fontSize: 15,fontWeight: FontWeight.w500),),
          centerTitle: true,
          backgroundColor: Color.fromRGBO(67, 128, 187, 1.0),
        ),
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              itemCount: 5,
                itemBuilder: (context,index)=>Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Image.asset('images/phone1.jpg',),
                            SizedBox(width: 15,),
                            Column(
                              children: [
                                Text('''Iphone Solid Plated Heart Case 7 
                            Plus / Black''',style: TextStyle(
                                  color: Colors.white
                                ),),
                                Row(
                                  children: [
                                    SizedBox(height: 19,),
                                    Text('14.95',style: TextStyle(color: Color.fromRGBO(155, 249, 255, 1),fontSize: 12),),
                                    VerticalDivider(
                                      color: Colors.white,
                                    ),
                                    SizedBox(height: 19,),
                                    Text('20.95',style: TextStyle(color: Color.fromRGBO(155, 249, 255, 1),fontSize: 15,fontWeight: FontWeight.w500,),
                                    ),
                                      ],
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 30,),
                                    Icon(Icons.access_time,color: Colors.white,size: 13,),
                                    SizedBox(width: 17,),
                                    Text('21 : 18 : 15',style: TextStyle(fontSize: 12,color: Colors.white),)
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 15,),
                        Divider(
                          color: Colors.white,height: 5,
                        )
                      ],
                    ),
            ),
                )),
          )
        ],
      )
    );
  }
}
