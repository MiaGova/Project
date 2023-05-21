import 'package:flutter/material.dart';
import 'list1.dart';
import 'dukan.dart';
import 'category.dart';
import 'first.dart';
import 'second.dart';
import 'three.dart';
import 'four.dart';
import 'five.dart';
import 'categorydz.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Me(),
  ));
}
class Me extends StatefulWidget {
  const Me({Key? key}) : super(key: key);

  @override
  State<Me> createState() => _MeState();
}
List label = ["Home", "Services", "Category", "Basket",'Profile'];
List icon = [
  Icon(Icons.home),
  Icon(Icons.cleaning_services),
  Icon(Icons.category),
  Icon(Icons.shopping_basket_outlined),
  Icon(Icons.person),
];
List pages = [];
int a = 0;
int c = 2;
List ady = ['karaca'];
List bolum = [
  "Phones & accessories",
  "Computer & Office",
  "Electronics",
  "Household appliences",
  "Women’s clothing",
  "Clothing for Menv",
  "Everything for Children",
  "Bags & Shoes",
  "Home & Pet Products",
  "Cat Products",
  "Health & Beauty",
  "Sports & Entertainment",
];
class _MeState extends State<Me> {
  @override
  void initState(){
    pages=[
      First(),Second(),Three(),Four(),Five(),
    ];
    super.initState();
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
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
          backgroundColor: Color.fromRGBO(250, 250, 250, 1),
          title: Padding(padding: EdgeInsets.only(top: 10, left: 15, right: 15,bottom: 10),
            child: Container(
              width: 340,
              height: 40,
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.qr_code_scanner),
                    focusColor: Color.fromRGBO(246, 246, 246, 1),
                    labelText: 'Search',
                    labelStyle: TextStyle(color: Color.fromRGBO(153, 153, 153, 1)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(100),
                        borderSide: BorderSide(
                            width: 5,
                            color: Colors.blue
                        )
                    ),
                ),
              ),
            ),),
        ),
        body: TabBarView(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.25,
                    height: MediaQuery.of(context).size.height,
                    child: ListView.builder(
                        itemCount: bolum.length,
                        itemBuilder: ((context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              bolum[index],
                              style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),
                            ),
                          );
                        })),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.height,
                    child: GridView.builder(
                      itemCount: ady.length,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          crossAxisSpacing: 10, maxCrossAxisExtent: 200),
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Container(
                              width: 100,
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      width: 106,
                                      height: 98,
                                      child: Image.asset('images/phone1.jpg')),
                                  Text('karaca'),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Container(
                              width: 100,
                              height: 120,
                              decoration: BoxDecoration(
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                children: [
                                  Container(
                                      width: 106,
                                      height: 98,
                                      child: Image.asset('images/phone1.jpg')),
                                  Text('karaca'),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color.fromRGBO(246, 246, 246, 1),
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
              method(icon[i], label[i])
          ],
        ),
      ),
    );
  }
  method(Icon icons,String labels){
    return BottomNavigationBarItem(icon: icons, label: labels);
  }
}
class Page extends StatefulWidget {
  const Page({Key? key}) : super(key: key);

  @override
  State<Page> createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
