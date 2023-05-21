import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()));
}
class MyWidget extends StatefulWidget {
  @override
  State<MyWidget> createState() => _MyWidgetState();
}
class _MyWidgetState extends State<MyWidget> {
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black12,
        title: Text('M',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.bold,),
        ),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Text("Очень качественные часы",style: TextStyle(color: Colors.black,fontSize: 25),),
              ),
              Text("Если купите сейчас .второй в подарок!",style: TextStyle(color: Colors.black,fontSize:20),),
              Container(
                width: 150,
                height: 150,
                child: Image.asset('images/05.jpg',width: 100,height: 100,)
              ),
              Row(
                children: [
                  IconButton(
                      onPressed: a!=12
                        ? () {
                        a++;
                        setState(() {});
                      }
                      :(){},
                      icon: Icon(Icons.hdr_plus)),
                  Text(a.toString()),
                  IconButton(
                      onPressed: a!=0
                        ?() {
                        a--;
                        setState(() {});
                      }
                      :(){},
                      icon: Icon(Icons.remove)),
                  Text(a==2
                  ?'max'
                  :a==0
                  ?'min'
                  :''),
                ],
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: (){
                    print('Clicked');
                  },
                      child: Text('Buy for 200 man',
                        style: TextStyle(fontSize: 14,
                            color: Colors.white),)
                  ),
                ],
              ),
              Column(
                children: [
                  Padding(padding: EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('images/06.jpg',width: 200,height: 200,),
                  ),
                  ),
                  Text('iPhone X',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Row(
                    children: [
                      IconButton(
                          onPressed: a!=12
                            ?() {
                            a++;
                            setState(() {});
                          }
                          :(){},
                          icon: Icon(Icons.hdr_plus)),
                      Text(a.toString()),
                      IconButton(
                          onPressed: a!=0
                            ?() {
                            a--;
                            setState(() {});
                          }
                          :(){},
                          icon: Icon(Icons.remove)),
                      Text(a==12
                          ?'max'
                      :a==0
                      ?'min'
                          :''),
                    ],
                  ),
                  Column(
                    children: [
                      ElevatedButton(onPressed: (){
                        print('Clicked');
                      },
                          child: Text('Buy for 200 man',
                            style: TextStyle(fontSize: 14,
                                color: Colors.white),)
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}