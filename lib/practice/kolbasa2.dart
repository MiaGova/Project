import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'mainkolbasa.dart';
class Kolbasa extends StatefulWidget {
  const Kolbasa({Key? key}) : super(key: key);

  @override
  State<Kolbasa> createState() => _KolbasaState();
}

class _KolbasaState extends State<Kolbasa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.amber,
                      title: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.red,
                          ),
                          Text("Dasoguz welayat"),
                        ],
                      ),
                      content: SingleChildScrollView(
                        child: Column(
                          children: [
                            Text('Buy for 50 tmt')
                          ],
                        ),
                      ),
                      titleTextStyle: TextStyle(color: Colors.red),
                      actions: [
                        TextButton(
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            child: Text("Hawa")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yok"))
                      ],
                    );
                  },
                );
              },
              child: Center(
                child: InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Kolbasa2()));
                  },
                  child: Center(
                    child: Text('go to the first page',style: TextStyle(fontSize: 30,color: Colors.purpleAccent),),
                  ),
                ),
              ),)
        ],
      ),
    );
  }
}
