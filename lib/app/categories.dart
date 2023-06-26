import 'package:flutter/material.dart';
import 'categoriesconst.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              listCategory('Декор для дома ', AssetImage('images/forhome.png')),
              listCategory('Аксессуары', AssetImage('images/aksesuar.png'),),
              listCategory('Ювелирные изделия', AssetImage('images/juwelry.png'),),
              listCategory('Одежда', AssetImage('images/clothes.png'),),
              listCategory('Мебель', AssetImage('images/mebel.png'),),
              listCategory('Товары для питомцев', AssetImage('images/domjiv.png'),),
              listCategory('Для детей', AssetImage('images/children.png'),),
              listCategory('Уходовая косметика ', AssetImage('images/cosmetics.png'),),
            ],
          ),
        ),
      ),
    );
  }
}

