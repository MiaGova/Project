import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListVi(),
  ));
}

class ListVi extends StatefulWidget {
  const ListVi({Key? key}) : super(key: key);

  @override
  State<ListVi> createState() => _ListViState();
}

class _ListViState extends State<ListVi> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}


