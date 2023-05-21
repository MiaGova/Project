import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '112.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Myhttp(),
  ));
}
class Myhttp extends StatefulWidget {
  const Myhttp({Key? key}) : super(key: key);

  @override
  State<Myhttp> createState() => _MyhttpState();
}

class _MyhttpState extends State<Myhttp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: ady(), builder: (context, AsyncSnapshot<Getmetod> snapshot) {
          if(snapshot.hasData) {
          return ListView.builder(itemBuilder: (BuildContext context,int index){
            return ListTile(
              title: Text(snapshot.data!.discountProducts.rows[index].nameRu),
              subtitle: Text(
                snapshot.data!.discountProducts.rows[index].bodyRu,
              ),
              leading: Image.network('http://216.250.9.29:5003/'+snapshot.data!.discountProducts.rows[index].images[0].image),
            );
          },
          itemCount: snapshot.data!.discountProducts.rows.length,
          );
          }else{
            return CircularProgressIndicator();
          }
      },
      ),
    );
  }
}
Future <Getmetod> ady () async{
  final response = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/discount'));
  var a = json.decode(response.body);
  debugPrint(response.body);
  return Getmetod.fromJson(a);
}
