import 'package:flutter/material.dart';
import 'ThirdPage.dart';

class SecondPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
          child:  Column(
            children: [
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 10, top: 12.0, bottom: 5.0),
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back,  size: 14, color: Colors.black54,),
                        SizedBox(width: 10,),
                        Text('Анонимный клуб дорамщиков'),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Container(
                    height: 300,
                    width: 400,
                    child: Image(image: AssetImage('images/01.jpg')),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Алхимия душ ', style: TextStyle(fontSize: 18),)
                  ],
                ),
              ),
              SizedBox(height: 5.0,),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Text('Описание:', style: TextStyle(fontSize: 16),)
                  ],
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Row(
                  children: [
                    Container(
                        height: 350,
                        width: 350,
                        child: Center(
                          child: Text('''«Алхимия душ» — южнокорейский телесериал с Ли Джэ Уком, Чон Со Мин, Го Ён Чжон и Хван Мин Хён в главных ролях. Написанный сестрами Хонг, он описывает истории молодых магов, имеющих дело с небом и землей.'''),
                        )
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () => Navigator.pushReplacement(context, MaterialPageRoute(
                    builder: (context) {
                      return ThirdPage();
                    }
                )),
                child: Container(
                    decoration: BoxDecoration(
                        color: Colors.blueAccent,
                        borderRadius: BorderRadius.circular(2.0)
                    ),
                    child: Padding(padding: EdgeInsets.all(10.0),
                      child: Text('Смотреть сейчас', style: TextStyle(color: Colors.white, fontSize: 14),),)
                ),
              )
            ],
          ),)
    );
  }
}