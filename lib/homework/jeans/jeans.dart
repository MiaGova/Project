import 'package:flutter/material.dart';


class jeans extends StatefulWidget {
  const jeans({Key? key}) : super(key: key);

  @override
  State<jeans> createState() => _jeansState();
}

class _jeansState extends State<jeans> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            actions: [Container(
              margin: EdgeInsets.only(left: 15,right: 15),
              height: 16,
              width: 16,
              child: Image.asset('images/vector.png',height: 16,width: 16,),
            )],
            leading: Icon(Icons.arrow_back,size: 20,color: Colors.black,),
            expandedHeight: 360,
            flexibleSpace:FlexibleSpaceBar(
              background: Image.asset('images/image 5.jpg',height: 360,width: 360,
                fit: BoxFit.fill,),
            ),
          ),
          SliverList(delegate: SliverChildListDelegate([
            Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Image.asset('images/160.png',width: 45,height: 29,),
                    SizedBox(width: 5,),
                    Text('TMT',style: TextStyle(color: Colors.white,backgroundColor: Colors.grey),),
                    SizedBox(width: 20,),
                    Text('18310TMT',style: TextStyle(fontSize: 12,color: Colors.grey,decoration: TextDecoration.lineThrough, decorationColor: Colors.red,fontWeight: FontWeight.w700),),
                        SizedBox(width: 15,),
                        Container(
                          decoration: BoxDecoration( borderRadius: BorderRadius.circular(3),color: Colors.red),
                          child: Text('-60%',style: TextStyle(color: Colors.white),),
                        ),
                  ],
                ),
                SizedBox(height: 15,),
                Container(
                  width: 330,
                  height: 51,
                  child: Text(
                    '''Men Jeans Oversize Black Blue Loose Big Size Jeans For Men Casual Fat Trousers Men's Cargo Pants Pantalon Homme 8XL 10XL Pants'''
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text('Details',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15,right: 15)),
                    Image.asset('images/image 20.jpg',width: 160,height: 160,),
                    Padding(padding: EdgeInsets.only(left: 10,right: 15)),
                    Image.asset('images/image 20.jpg',width: 160,height: 160,)
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Text('Related',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,),),
                  ],
                ),
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 10,right: 10)),
                    Image.asset('../images/Frame104.png',width: 360,height: 240,),

                  ],
                ),
                ],
            )
            ]))
        ],
      ),)
    );
  }
}
