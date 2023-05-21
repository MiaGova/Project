import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()));
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List account = [
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgO8QhgeSlVeyLWyX_w5zhMszEyQSa_o1iDmP2Ow1T&s",
      "Ogulnur",
      "mailto:ogulnur32@gmail.com"
    ],
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ-rYFkdDpL5PjCeL9xavtfYjwKF40aOeSMMVVR4B6p&s",
      "Maysa",
      "mailto:maysa43@gmail.com"
    ],

  ];
  bool checkAcount = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      endDrawer: Drawer(
        // backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.all(8),
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              accountName: Text(checkAcount ? account[1][1] : account[0][1]),
              otherAccountsPictures: [
                InkWell(
                  onTap: () {
                    checkAcount = !checkAcount;
                    setState(() {});
                  },
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(
                          checkAcount ? account[0][0] : account[1][0])),
                ),
              ],
              accountEmail: Text(
                checkAcount ? account[1][2] : account[0][1],
              ),
              currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      checkAcount ? account[1][0] : account[0][0])),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.person),
              title: Text("Bas sahypa"),
            ),
            AboutListTile(
              icon: Icon(Icons.ad_units_outlined),
              child: Text("data"),
              applicationIcon: Icon(Icons.access_time),
              applicationName: "DAC",
              applicationVersion: "1.0.4",
              applicationLegalese: "Bootcamp",
            )
          ],
        ),
      ),
    );
  }
}
