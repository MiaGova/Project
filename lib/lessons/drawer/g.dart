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
    [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZcWYdxbOP5JNKPcf59I4tr-yG0AJ62xnx74C0HYcfUg&s",
      "ayjeren",
      "mailto:ayjeren@gmail.com"
    ],
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  int a = 0;
  int? b;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.red,
        width: MediaQuery.of(context).size.width * 0.8,
        child: ListView(
          padding: EdgeInsets.all(8),
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              accountName: Text(account[a][1]),
              otherAccountsPictures: [
                InkWell(
                  onTap: () {
                    a = 1;
                    setState(() {});
                  },
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(account[0][0])),
                ),
                InkWell(
                  onTap: () {
                    a = 2;
                    setState(() {});
                  },
                  child: CircleAvatar(
                      backgroundImage: NetworkImage(account[1][0])),
                )
              ],
              accountEmail: Text(
                account[a][2],
              ),
              currentAccountPicture:
              CircleAvatar(backgroundImage: NetworkImage(account[a][0])),
            ),
            ListTile(
              onTap: () {
                _key.currentState!.closeDrawer();
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
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                _key.currentState!.openDrawer();
              },
              child: Text("Drawer"))
        ],
      ),
    );
  }
}
