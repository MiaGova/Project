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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer"),
      ),
      drawer: Drawer(
        // backgroundColor: Colors.red,
        child: ListView(
          padding: EdgeInsets.all(8),
          // mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.amber),
              accountName: Text("Begenc"),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/fJwcR6E_LgEvhaU5mUlPGjJkx-SwfZF1PO2lLynHiKaZ8nL28SzRjvtPWXcJTy2yIA"),
                ),
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://play-lh.googleusercontent.com/fJwcR6E_LgEvhaU5mUlPGjJkx-SwfZF1PO2lLynHiKaZ8nL28SzRjvtPWXcJTy2yIA"),
                ),
              ],
              accountEmail: Text(
                "mailto:begencjumayew48@gmail.com",
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://play-lh.googleusercontent.com/fJwcR6E_LgEvhaU5mUlPGjJkx-SwfZF1PO2lLynHiKaZ8nL28SzRjvtPWXcJTy2yIA"),
              ),
            ),
            ListTile(
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
