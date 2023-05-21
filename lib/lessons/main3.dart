import 'package:flutter/material.dart';
import 'package:flutterapp/lessons/products.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Product(),
  ));
}
class Product extends StatefulWidget {
  const Product({super.key});
  @override
  State<Product> createState() => _ProductState();
}
class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Container(
              height: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Color.fromRGBO(230, 230, 230, 1)),
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.only(left: 15, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Haryt gözle",
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color.fromRGBO(104, 109, 118, 1)),
                  ),
                  Icon(
                    Icons.search,
                    color: Color.fromRGBO(104, 109, 118, 1),
                  )
                ],
              ),
            ),
            Row(
              children: [
                method("Kategoriyalar", Icon(Icons.category)),
                method("Kategoriyalar", Icon(Icons.cabin)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Arzanladyşlar'),
                  Row(
                    children: [
                      Text('ählisini gör', style: TextStyle(color: Colors.red),),
                      Icon(Icons.arrow_right_alt, color: Colors.red,)
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                children: [
                  Flexible(
                      flex: 1,
                      child: Products(),
                  ),
                  Flexible(
                      flex: 1,
                      child: Products(),
                  )
                ],
              ),
            )
          ],
        ));
  }
  method(String text, Icon icones) {
    return Container(
      width: MediaQuery.of(context).size.width / 2 - 30,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color.fromRGBO(230, 230, 230, 1)),
      margin: EdgeInsets.only(left: 15, right: 7),
      padding: EdgeInsets.only(left: 15, right: 15),
      child: Row(
        children: [
          icones,
          Text(
            text,
            style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: Color.fromRGBO(104, 109, 118, 1)),
          )
        ],
      ),
    );
  }
}