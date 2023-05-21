import 'package:flutter/material.dart';

class moviesFirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('M&T',
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.account_circle_outlined),
        ],
        leading: Icon(Icons.arrow_back),
      ),
      body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: 150,
                    height: 150,
                    child: Image(image: AssetImage('images/01.jpg')),
                  ),
                  Row(
                children: [
                  Padding(padding: EdgeInsets.all(10.0),
                    child: Container(
                      height: 100,
                      width: 100,
                      child: Text('''Name:Alchemy of Souls,
                      Episodes:20,
                      Period:70 min''',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),),
                    ),
                  )
                 ]
                ),
                  ElevatedButton(onPressed: (){
                    print('Clicked');
                  },
                      child: Text('Buy for 20 man',
                        style: TextStyle(fontSize: 14,
                            color: Colors.white),)
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image(image: AssetImage('images/03.jpg')),
                      ),
                      Column(
                          children: [
                            Padding(padding: EdgeInsets.all(10.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Text('''Name:Story about Kumiho,
                      Episodes:16,
                      Period:60 min''',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),),
                              ),
                            )
                          ]
                      ),
                      ElevatedButton(onPressed: (){
                        print('Clicked');
                      },
                          child: Text('Buy for 20 man',
                            style: TextStyle(fontSize: 14,
                                color: Colors.white),)
                      )
                        ],
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Column(
              children: [
              Container(
                width: 150,
                height: 150,
                child: Image(image: AssetImage('images/02.jpg')),
              ),
                Row(
                    children: [
                      Padding(padding: EdgeInsets.all(10.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Text('''Name:Cheer up!,
                      Episodes:12,
                      Period:60 min''',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),),
                        ),
                      )
                    ]
                ),
                ElevatedButton(onPressed: (){
                  print('Clicked');
                },
                    child: Text('Buy for 20 man',
                      style: TextStyle(fontSize: 14,
                          color: Colors.white),)
                )
                ],
              ),
                  Column(
                    children: [
                      Container(
                        width: 150,
                        height: 150,
                        child: Image(image: AssetImage('images/04.jpg')),
                      ),
                      Row(
                          children: [
                            Padding(padding: EdgeInsets.all(10.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: Text('''Name:Business proposition,
                      Episodes:12,
                      Period:60 min''',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),),
                              ),
                            )
                          ]
                      ),
                      ElevatedButton(onPressed: (){
                        print('Clicked');
                      },
                          child: Text('Buy for 20 man',
                            style: TextStyle(fontSize: 14,
                                color: Colors.white),)
                      )
                    ],
                  ),
            ],
          ),
    ],
    )
    )
    );
  }
}