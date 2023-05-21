import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}
class MyWidget extends StatelessWidget {
  const MyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.amber,
                      title: Row(
                        children: [
                          Icon(
                            Icons.person,
                            color: Colors.red,
                          ),
                          Text("Dasoguz welayat"),
                        ],
                      ),
                      content: Text("Android app"),
                      titleTextStyle: TextStyle(color: Colors.red),
                      actions: [
                        TextButton(
                            onPressed: () {
                              SystemNavigator.pop();
                            },
                            child: Text("Hawa")),
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Yok"))
                      ],
                    );
                  },
                );
              },
              child: Text(
                "Go to the first page",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
class FirstPage extends StatefulWidget {
  const FirstPage({super.key});
  @override
  State<FirstPage> createState() => _FirstPageState();
}
class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            child: Text(
              "First page",
              style: TextStyle(fontSize: 20),
            ),
            onTap: () {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => MyWidget()),
                      (Route rout) => false);
            },
          ),
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Text(
                "Go to back",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}