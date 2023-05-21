import 'package:flutter/material.dart';
import 'package:flutterapp/homework/market.dart';

import '../main3.dart';
import 'First.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Buttom(),
  ));
}
class Buttom extends StatefulWidget {
  const Buttom({super.key});

  @override
  State<Buttom> createState() => _ButtomState();
}

class _ButtomState extends State<Buttom> {
  List labe = [
    "Home",
    "Categoriya",
    "Profile",
  ];
  List icons = [
    Icon(Icons.home),
    Icon(Icons.category),
    Icon(Icons.portable_wifi_off),
  ];
  List col = [ Colors.blue, Colors.green, Colors.grey];
  int sany = 0;
  List pages = [];
  @override
  void initState() {
    // TODO: implement initState
    pages = [ MyWidget(), ListVi(), Product()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[sany],
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.red,
        currentIndex: sany,
        items: [
          for (int i = 0; i < icons.length; i++)
            bottomItem(icons[i], labe[i], col[i])
        ],
        type: BottomNavigationBarType.shifting,
        onTap: (index) {
          sany = index;
          setState(() {});
        },
      ),
    );
  }

  bottomItem(Icon icons, String labels, Color colores) {
    return BottomNavigationBarItem(
        icon: icons, label: labels, backgroundColor: colores);
  }
}
