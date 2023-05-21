import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyWidget()));
}

class MyWidget extends StatefulWidget {

  MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  List icon = [
    ['Главная',Icon(Icons.category_outlined,color: Colors.black,)],
    ['Автомобили',Icon(Icons.drive_eta,color: Colors.black,)],
    ['Запчасти',Icon(Icons.details_outlined,color: Colors.black,),],
    ['Другие',Icon(Icons.shopping_basket_outlined,color: Colors.black,),],
    ['Бизнес аккаунты',Icon(Icons.star_border_outlined)],
    ['Новости',Icon(Icons.calendar_today_outlined,color: Colors.black,),],
  ];
  bool checkAcount = true;
  bool f = false;
  final PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(11, 49, 80, 1),
        title: Text("Главная",style: TextStyle(fontWeight: FontWeight.w500),),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.all(8),
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              child: Column(
                children: [
                  Container(
                    width: 50,
                      height: 50,
                      child: Image.asset('images/tmcars.png')),
                  SizedBox(height: 15,),
                  Text('Мой профиль')
                ],
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Column(
              children: List.generate(icon.length, (index) => method(context, icon[index][1], icon[index][0]))
            ),
            Divider(
              color: Colors.grey,
            ),
            ListTile(
              onTap: (){},
              title: SwitchListTile(
                  title: Text('Tемный режим'),
                  value: f,
                  onChanged: (val){
                    f=val!;
                    setState(() {

                    });
                  }),
            ),ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.settings_outlined,color: Colors.black,),
              title: Text("Настройки"),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: Icon(Icons.comment_outlined,color: Colors.black,),
              title: Text("Администратор"),
            ),
    ],
        ),
      ),
      body: PageView(
        controller: controller,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        pageSnapping: true,
        children: [
          Container(
            width: 150,
            height: 150,
            child: Image.asset('images/05.jpg'),
          ),
          Container(
            child: Image.asset('images/06.jpg'),
          ),
          Container(
            child: Image.asset('images/phone2.png'),
          ),
          Container(
            child: Image.asset('images/phone1.jpg'),
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Go',style: TextStyle(fontSize: 40),),
                ElevatedButton(onPressed: (){
                  //controller.jumpTo(0);
                  setState(() {
                    controller.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.easeInBack);
                  });
                },child: Text('Reload'))
              ],
            )
          )
        ],
      ),
    );
  }
}
method(BuildContext context,Icon icon,String label){
  return ListTile(
    onTap: () {
      Navigator.pop(context);
    },
    leading: icon,
    title: Text(label),
  );
}

