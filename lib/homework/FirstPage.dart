import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                      padding: EdgeInsets.only(left: 15, top: 20, bottom: 15),
                      child: Icon(Icons.arrow_back,
                        color: Colors.white,
                        size: 30,)),
                  SizedBox(
                    width: 40,
                  ),
                  Text('Movies',
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                 Padding(padding: EdgeInsets.all(19.0),
                       child: Container(
                         height: 300,
                         width: 200,
                         child: Image(image: AssetImage('images/01.jpg')),
                       ),
                     )
                ],
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 300,
                    width: 300,
                    child: Text("A powerful sorceress in a blind woman's body encounters a man from a prestigious family,who wants her help to change his destiny.",
                    style: TextStyle(color: Colors.white,fontSize: 16),),
                  ),
                  )
                ],
              ),
              ElevatedButton(onPressed: (){
                print('Clicked');
              },
                  child: Text('Start watch',
                    style: TextStyle(fontSize: 14,
                        color: Colors.black),)
              )
            ],
          )
      ),
      );
  }
}