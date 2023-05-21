import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyCard(),
  ));
}
class MyCard extends StatefulWidget {
  const MyCard({super.key});
  @override
  State<MyCard> createState() => _MyCardState();
}
class _MyCardState extends State<MyCard> {
  DateTime now = DateTime.now();
  List a = [
    [
      "Mehrinisa<з",
      "12:45",
      "File",
      "images/Мехри Ниса.png"
    ],
    [
      "Тамара",
      "yesterday",
      "Sticker",
      "images/Тамара.png"
    ],
    [
      "Gunesh",
      "yesterday",
      "Sticker",
      "G"
    ],
    [
      "Jahan DigiWoman",
      "yesterday",
      "Hawwa",
      "J"
    ],
    [
      "#Айпери",
      "4 Apr",
      "ponyatno",
      "images/Айпери.png"
    ],
    [
      "Alsu",
      "yesterday",
      "Video",
      "images/Алсу.png"
    ],
    [
      "Begenc Jumayew",
      "6 minuts ago",
      "Ok",
      "images/BegencJumayew.png"
    ],
    [
      "Gaygysyz",
      "11:10",
      "Dogry",
      "images/Gaygysyz.png"
    ],
    [
      "Mehri",
      "10:41",
      "Photo",
      "images/Mehri.png"
    ],
    [
      "Десятая в DAC",
      "1 minut ago",
      "One Piece",
      "images/Десятая в DAC.png"
    ]
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: CircleAvatar(
            backgroundImage: NetworkImage('images/4.png'),
          ),
          leading: Icon(Icons.account_circle,color: Color.fromRGBO(104, 109, 118, 1),),
          actions: [Icon(Icons.edit_note_sharp,color: Color.fromRGBO(104, 109, 118, 1),)],

          centerTitle: true,
        ),
        body:
        ListView.builder(
          itemCount: a.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: Colors.white,
              shadowColor: Colors.white,
              elevation: 100,
              child: ListTile(
                title: Text(a[index][0]),
                subtitle: Text(a[index][2]),
                textColor: Colors.black,
                // tileColor: Colors.green,
                // selectedTileColor: Colors.blue,
                // contentPadding: EdgeInsets.all(50),
                onTap: () {
                  debugPrint("basyldy");
                },
                onLongPress: () {
                  debugPrint("Long press");
                },
                splashColor: Colors.purpleAccent,
                trailing: Text(a[index][1]),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(a[index][3]),
                ),
              ),
            );
          },
        )
    );
  }
}
