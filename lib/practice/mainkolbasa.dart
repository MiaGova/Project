import 'package:flutter/material.dart';
import 'kolbasa2.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Kolbasa2(),
  ));
}
class Kolbasa2 extends StatefulWidget {
  const Kolbasa2({Key? key}) : super(key: key);

  @override
  State<Kolbasa2> createState() => _Kolbasa2State();
}

class _Kolbasa2State extends State<Kolbasa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Kolbasa()));
          },
          child: Image.asset('images/taze.jpg'),
        ),
      ),
    );
  }
}

