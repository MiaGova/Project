import 'package:flutter/material.dart';
import 'category.dart';
import 'dukan.dart';
class list1 extends StatefulWidget {
  const list1({Key? key}) : super(key: key);

  @override
  State<list1> createState() => _list1State();
}
List label = ["Home","Services","Category",'Basket','Profile'];
List icon = [
  Icon(Icons.home),
  Icon(Icons.cleaning_services),
  Icon(Icons.category_outlined),
  Icon(Icons.shopping_basket_outlined),
  Icon(Icons.person_2_outlined),
];
List pages = [];
int sany = 0;
class _list1State extends State<list1> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white70,
          toolbarHeight: 0,
          bottom: TabBar(
            labelColor: Colors.red,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white70,

            tabs: [
            Row(
              children: [
                Icon(Icons.category_outlined),
                SizedBox(width: 5,),
                Tab(text: 'Kategoriyalar',),
              ],
            ),
            Row(
              children: [
                Icon(Icons.store),
                SizedBox(width: 5,),
                Tab(text: 'Dukanlar',),
              ],
            ),
          ],
          ),
        ),
        body:
        TabBarView(
          children: [
            category(),
            dukan(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          type: BottomNavigationBarType.fixed,
            currentIndex: sany,
            onTap: (index){
            sany=index;
            setState(() {

            });
            },
            items:[
              for (int i = 0; i < icon.length; i++)
                bottomItem(icon[i], label[i])
            ],
        ),
    )
    );
  }
  bottomItem(Icon icons, String labels) {
    return BottomNavigationBarItem(
        icon: icons, label: labels);
  }
}
