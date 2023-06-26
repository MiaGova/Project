import 'package:flutter/material.dart';
import 'package:flutterapp/myproject/Sign.dart';
import 'package:flutterapp/myproject/bottomtabar.dart';
import 'package:flutterapp/myproject/purchases.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'Signconst.dart';
import 'home.dart';
import 'categories.dart';
import 'favourites.dart';
import 'profile.dart';
import 'Sign.dart';
import 'signin.dart';



void main(List<String> args) async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('registr');
  await Hive.openBox('signin');
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<BtmPro>(create: (context)=>BtmPro(a: 0)),
    ChangeNotifierProvider<Sin>(create: (context)=>Sin(registration: [])),
    ChangeNotifierProvider<Sinin>(create: (context)=>Sinin(sign: [])),
  ],child: MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Start(),
  ),
  )
  );
}

class Start extends StatefulWidget {
  const Start({super.key});

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  int _counter = 0;


  static const List<Widget> _pages = <Widget>[
    Home(), Categories(), Purchases(), Favourites(), Profile(),
  ];
  int _selectedIndex = 0;
  List pages = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              elevation: 0,
              title: Container(
                  width: 87, height: 39,
                  child: Image.asset('images/logo.png')),
              centerTitle: true,
              backgroundColor: Colors.white,
              actions: [InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Sign()),
                  );
                },
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset("images/Sign_in.png",
                      color: Color.fromRGBO(238, 150, 234, 1),)
                ),
              )
              ],
            ),
            body:Consumer<BtmPro>(builder: (context,val,child)=> _pages.elementAt(val.a),),
            bottomNavigationBar: Consumer<BtmPro>(
              builder: (context,val,child)=>BottomNavigationBar(
                showUnselectedLabels: false,
                showSelectedLabels: false,
                currentIndex: val.a,
                onTap: (value) {
                  val.change(value);
                },
                backgroundColor: Color.fromRGBO(232, 200, 230, 1),
                selectedItemColor: Color.fromRGBO(238, 150, 234, 1),
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    backgroundColor: Color.fromRGBO(232, 200, 230, 1),
                    icon: ImageIcon(AssetImage('images/Home.png')),
                    label: 'Главная',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/category.png')),
                    label: 'Категории',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/Bag.png')),
                    label: 'Заказы',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/fav.png')),
                    label: 'Избранное',
                  ),
                  BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('images/User.png')),
                    label: 'Профиль',
                  ),
                ],
              ),)
        )
    );
  }
}