import 'package:flutter/material.dart';
import 'package:flutterapp/myproject/constant.dart';
import 'package:flutterapp/marketmap.dart';
import 'package:flutterapp/myproject/purchases.dart';
class Favourites extends StatefulWidget {
  const Favourites({Key? key}) : super(key: key);

  @override
  State<Favourites> createState() => _FavouritesState();
}

class _FavouritesState extends State<Favourites> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Shop('Избранное'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: FavouritePro(images, p, d, price),
            )
          ],
        ),
      ),
    ));
  }
}
