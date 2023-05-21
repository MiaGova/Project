import 'package:flutter/material.dart';
import'digerlist.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}
class Mywidget extends StatefulWidget {
  const Mywidget({Key? key}) : super(key: key);

  @override
  State<Mywidget> createState() => _MywidgetState();
}

class _MywidgetState extends State<Mywidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [
          Icon(Icons.arrow_back),
        ],
        title: Text('Diger Form Elemanlari'),
      ),
    );
  }
}


