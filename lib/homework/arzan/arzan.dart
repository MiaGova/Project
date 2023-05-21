import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;
import 'package:carousel_slider/carousel_slider.dart';

import 'arzanjson.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Arzanladys(),
  ));
}
class Arzanladys extends StatefulWidget {
  const Arzanladys({Key? key}) : super(key: key);

  @override
  State<Arzanladys> createState() => _ArzanladysState();
}

class _ArzanladysState extends State<Arzanladys> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.arrow_back),
        title: Text('New Products',style: TextStyle(color: Colors.black),),
      ),
      body: FutureBuilder(
        future: getmethod(), builder: (BuildContext context, AsyncSnapshot<Top> snapshot) {
          if (snapshot.hasData){
            return CustomScrollView(
              slivers: [
                SliverList(delegate: SliverChildListDelegate(
                    [Row(
                      children: [
                        method(),
                        method(),
                        metod(),
                        metod(),
                      ],

                    )
                    ]
                )),
                SliverGrid(delegate: SliverChildBuilderDelegate((context, index) => Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      //Image.network(snapshot.data!.newProducts[index].images[0].images),
                      Text(snapshot.data!.newProducts[index].nameRu)
                    ],
                  ),
                ),
                    childCount: snapshot.data!.newProducts.length
                ),
                    gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 200))

              ],
            );
          }else{
            return CircularProgressIndicator();
          }

      },
      )
    );
  }
}
method (){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10,top: 5),
    width: 100,
    height: 30,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Colors.red)
    ),
    child: InkWell(
        onTap: (){},
        child: Center(child: Text('Baha',
          style: TextStyle(fontSize: 10,fontWeight: FontWeight.w400),))),
  );
}
metod(){
  return Container(
    margin: EdgeInsets.only(left: 10,right: 10,top: 5),
    child: InkWell(
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: Colors.black)
        ),
        width: 50,
        height: 30,
        child: Icon(Icons.filter_alt_outlined),
      ),
    ),
  );
}
Future<Top>getmethod()async{
  final res = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/new'));
  debugPrint(res.body);
  var a = json.decode(res.body);
  return Top.fromJson(a);
}