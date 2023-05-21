import 'package:flutter/material.dart';
import 'dart:developer';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Value3(),
  ));
}
class Value3 extends StatefulWidget {
  const Value3({Key? key}) : super(key: key);

  @override
  State<Value3> createState() => _Value3State();
}

class _Value3State extends State<Value3> {
  final List<String> _elements =
      List.generate(100, (index) => 'Element${index.toString()}');
  final List<int> _items = List<int>.generate(50, (int index) => index);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Valukey3'),
        centerTitle: true,
      ),
      body: ReorderableListView.builder(itemBuilder: (context,index)=>
          Dismissible(
            key: ValueKey(_elements[index]),
            child: Card(
              key: ValueKey(_elements[index]),
              color: Colors.grey,
              elevation: 1,
              margin: EdgeInsets.all(10),
              child: ListTile(
                contentPadding: EdgeInsets.all(25),
                title: Text(_elements[index],style: TextStyle(fontSize: 20),),
              trailing: Icon(Icons.drag_handle),
                subtitle: TextField(style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
              ),
            ),
            onDismissed: (direction){
              if(direction == DismissDirection.vertical);
              setState(() {
                _elements.removeAt(index);
              });
            },
          ),
          itemCount: _elements.length,
          onReorder: (int oldIndex, int newIndex)=>setState(() {
    if (oldIndex < newIndex) {
    newIndex -= 1;
    }
    final int item = _items.removeAt(oldIndex);
    _items.insert(newIndex, item);
          }),
    ),
    );
  }
}
