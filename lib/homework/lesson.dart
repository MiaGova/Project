import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Mary",
          style: TextStyle(
              backgroundColor: Colors.black,
              fontSize: 20,
              color: Colors.amber,
              fontWeight: FontWeight.bold,
              letterSpacing: 10,
              wordSpacing: 20),
        ),
        centerTitle: true,
        actions: [
          Icon(
            Icons.access_alarm,
            color: Colors.black,
            size: 50,
          )
        ],
        leading: Icon(Icons.person),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.red, blurRadius: 10, spreadRadius: 10),
                    ]),
                alignment: Alignment.center,
                child: Text(
                  "Bootcamp",
                  style: TextStyle(
                      color: Colors.red,
                      decoration: TextDecoration.underline,
                      decorationColor: Colors.black,
                      fontStyle: FontStyle.italic,
                      decorationStyle: TextDecorationStyle.double),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                alignment: Alignment.center,
                child: Text("Bootcamp"),
              ),
            ],
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [Colors.black, Colors.red]),
                border: Border.all(color: Colors.black)),
            alignment: Alignment.center,
            child: Text("Bootcamp"),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [Colors.black, Colors.red]),
                border: Border.all(color: Colors.black)),
            alignment: Alignment.center,
            child: Text("Bootcamp"),
          ),
        ],
      ),
    ),
  ));
}