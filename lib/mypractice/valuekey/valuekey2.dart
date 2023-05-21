import 'package:flutter/material.dart';
import 'dart:developer';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Value2(),
  ));
}
class Value2 extends StatefulWidget {
  const Value2({Key? key}) : super(key: key);

  @override
  State<Value2> createState() => _Value2State();
}

class _Value2State extends State<Value2> {
  bool showEmail = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Value2'),
        centerTitle: true,
      ),
      body: Padding(padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(showEmail)
               TextField(
                 key: ValueKey(MyObject('username')),
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  icon: Icon(Icons.email),
                  labelText: 'Email',
                  labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
                ),
              ),
            SizedBox(height: 10,),
             TextField(
              key: ValueKey(MyObject('email')),
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                icon: Icon(Icons.people),
                labelText: 'Username',
                labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)
              ),
            )
          ],
        ),
      ),
      floatingActionButton: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: Colors.grey,
          textStyle: TextStyle(fontSize: 20)
        ),
          onPressed: ()=>setState(() =>showEmail=false),
          icon: Icon(Icons.visibility_off),
          label: Text('Remove Email')),
    );
  }
}

class MyObject {
  final String keyString;
  MyObject(this.keyString);
  @override
  bool operator == (Object other)=>
      identical(this, other)||
  other is MyObject &&
  runtimeType==other.runtimeType&&
  keyString==other.keyString;
  @override
  int get hasCode => keyString.hashCode;
}