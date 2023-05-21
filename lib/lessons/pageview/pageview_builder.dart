import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Builder()));
}
class Builder extends StatefulWidget {
  const Builder({Key? key}) : super(key: key);

  @override
  State<Builder> createState() => _BuilderState();
}

class _BuilderState extends State<Builder> {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(itemBuilder: (BuildContext context,int index)=>Container(
      alignment: Alignment.center,
      color: index %2==0? Colors.red:Colors.greenAccent,
      child: Text(''),
    ));
  }
}
class page extends StatelessWidget {
  const page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView.custom(childrenDelegate: SliverChildListDelegate([
      Text('1'),
      Text('2'),
      Text('3')
    ]));
  }
}
