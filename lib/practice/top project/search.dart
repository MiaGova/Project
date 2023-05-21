import 'package:flutter/material.dart';

search (BuildContext) {
  return Padding(padding: EdgeInsets.only(top: 30, left: 20, right: 20, bottom: 20),
  child: Container(
    width: 370,
    height: 50,
    child: TextField(
      decoration: InputDecoration(
        focusColor: Colors.blue,
        labelText: 'Search',
        labelStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100),
          borderSide: BorderSide(
            width: 5,
            color: Colors.blue
          )
        ),
        suffixIcon: Icon(Icons.search, color: Colors.blue,),
        suffixIconColor: Colors.blue
      ),
    ),
  ),);
}