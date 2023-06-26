import 'package:flutter/material.dart';
import 'package:flutterapp/myproject/Sign.dart';
import 'package:flutterapp/myproject/purchases.dart';
import 'package:flutterapp/myproject/signin.dart';
import 'constant.dart';


class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            title: Shop('Профиль'),
          ),
          body: Column(
            children: [
              Prof('Регистрация','images/User.svg',context,Sign()),
              Prof('Войти', 'images/Sign_in.svg',context,Signin()),
              Prof('Мои заказы', 'images/Basket.svg',context,Purchases())
            ],
          ),
        ));
  }
}


