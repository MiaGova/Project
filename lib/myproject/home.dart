import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutterapp/myproject/Sign.dart';
import 'package:flutterapp/myproject/products/noproduct.dart';
import 'package:flutterapp/myproject/purchases.dart';
import 'package:provider/provider.dart';
import 'constant.dart';
import '../marketmap.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final _control = PageController(
    initialPage: 0,
  );
  int a = 0;
  final PageController controller=PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 200,
                      autoPlay: true,
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      viewportFraction: 0.8,
                      onPageChanged: ((index, er) {
                        a = index;
                        setState(() {});
                      }),
                    ),
                    itemBuilder: (BuildContext context, int index, int realIndex) {
                      return Image.network(
                        images[index],
                        fit: BoxFit.fill,
                      );
                    },
                    itemCount: images.length,
                  ),
                  Positioned(
                    right: 0,
                    left: 0,
                    bottom: 10,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: images
                          .map(
                            (e) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                                border: Border.all(color: Colors.white),
                                color: images.indexOf(e) == a
                                    ? Colors.white
                                    : Colors.transparent,
                                shape: BoxShape.circle),
                          ),
                        ),
                      )
                          .toList(),
                    ),
                  )
                ],
              ),
              ProductsHeader('Новые продукты'),
              Products(images, p, d, price),
              ProductsHeader('Игрушки'),
              Products(play, playCompany, playDescription, playPrice),
              ProductsHeader('Посуда'),
              Products(DishImage, DishCompany, DishDescription, DishPrice),
              ProductsHeader('Одежда'),
              Products(ClothImage, ClothCompany, ClothDescription, ClothPrice),
              ProductsHeader('Для комнаты'),
              Products(RoomDecoreImage, RoomDecoreCompany, RoomDecoreDescription, RoomDecorePrice)
            ],
          ),
        ),
      )
    );
  }
}
