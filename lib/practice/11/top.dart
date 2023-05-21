import 'package:flutter/material.dart';
import 'package:flutterapp/practice/11/topfile.dart';
import 'package:http/http.dart'as http;
import 'dart:convert';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Top(),
  ));
}
class Top extends StatefulWidget {
  const Top({Key? key}) : super(key: key);

  @override
  State<Top> createState() => _TopState();
}
int? a;
class _TopState extends State<Top> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: name(), builder: (context, AsyncSnapshot<TopProducts> snapshot) {
          debugPrint(snapshot.toString());
        if(snapshot.hasData) {
          return ListView.builder(itemBuilder: (BuildContext context,int index){
            return ListTile(
              title: Text(snapshot.data!.rows[index].nameRu!),
              subtitle: Text(snapshot.data!.rows[index].bodyRu!),
              leading: Image.network('http://216.250.9.29:5003/'+snapshot.data!.rows[index].images![0].image),
            );
          },
            itemCount: snapshot.data!.rows.length,
          );
        }else{
          return Center(child: CircularProgressIndicator());
        }
      },
      ),
    );
  }
}
Future<TopProducts> name ()async{
  final res = await http.get(Uri.parse('http://216.250.9.29:5003/public/products/top'));
  var a = json.decode(res.body);
  return TopProducts.fromJson(a);
}