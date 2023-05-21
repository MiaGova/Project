import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
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
                children: [
              Column(
              children: [
                Image.network(
                  "https://avatars.mds.yandex.net/get-kinopoisk-image/6201401/6375dcac-bf7e-40a8-9db6-2a804abd7632/300x450",
                  width: 200,
                  height: 200,
                ),
              Image.asset(
                "images/01.jpg",
                width: 100,
                height: 100,
              ),
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage("images/01.jpg"),
              ),
            ],
          ),

              ],
              )
]
  )
),
),
  ),
  );
}
