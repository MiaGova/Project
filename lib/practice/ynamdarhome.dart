import 'package:flutter/material.dart';
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
int sany = 0;
class _MeState extends State<Me> {
  @override
  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
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
                      itemCount: 14,
                      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                          crossAxisSpacing: 0, maxCrossAxisExtent: 90),
                      itemBuilder: (context, index) {
                        return Container(
                          child: Column(
                            children: [
                              Container(
                                    width:90,
                                    height: 90,
                                    child: Column(
                                      children: [
                                        Image.asset('images/kol 1.jpg'),
                                        SizedBox(height: 5,),
                                        Text('All',style: TextStyle(color: Color.fromRGBO(107, 107, 108, 1),fontSize: 10,fontWeight: FontWeight.w500),)
                                      ],
                                    ),
                                  ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            GridView.builder(itemCount: 12,
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(crossAxisSpacing: 0,maxCrossAxisExtent: 150),
                itemBuilder: (context,index)=>Container(
                  width: 110,
                  height: 130,
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Color.fromRGBO(243, 243, 243, 1),width: 0.5),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 106,
                          height: 98,
                          child: Image.asset('images/Rectangle 79.png')),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text('Karaca',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500),),
                      )
                    ],
                  )
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
