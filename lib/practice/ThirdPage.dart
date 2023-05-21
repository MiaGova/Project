import 'package:flutter/material.dart';

class ThirdPage extends  StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child:Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.all(25),
                    child: Icon(Icons.arrow_back, size: 16,),)
                ],
              )
            ],
          ), )
    );
  }
}