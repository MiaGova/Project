import 'package:flutter/material.dart';
const CategoryStyle = TextStyle(color: Colors.black,fontWeight: FontWeight.w400,fontSize: 20);
const collapsedcolor = Color.fromRGBO(238, 150, 234, 1);



listCategory (String text,AssetImage image){
  return Padding(
    padding: const EdgeInsets.only(top: 19),
    child: ExpansionTile(
      title: Text(text,style: CategoryStyle,),
      leading: CircleAvatar(backgroundImage: image,),
    ),
  );
}
