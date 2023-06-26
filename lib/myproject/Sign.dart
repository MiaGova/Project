import 'package:flutter/material.dart';
import 'package:flutterapp/digiwoman/practice/diger/digerlist.dart';
import 'package:flutterapp/myproject/signin.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'Signconst.dart';
import 'StartList.dart';
import 'constant.dart';



class Sign extends StatefulWidget {
  const Sign({Key? key}) : super(key: key);

  @override
  State<Sign> createState() => _SignState();
}
class _SignState extends State<Sign> {
  late Box box;
  @override



  TextEditingController number = TextEditingController();
  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController password2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
          appBar:AppBar(
            leading: IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back,color: Color.fromRGBO(238, 150, 234, 1),)),
            elevation: 0,
            title: Container(
                width: 87, height: 39,
                child: Image.asset('images/logo.png')),
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
        body: Consumer<Sin>(builder: (BuildContext context, value, Widget? child){
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Shop('Регистрация'),
                Padding(
                  padding: const EdgeInsets.only(top: 23),
                  child: Container(
                      width: 327,
                      height: 70,
                      child:TextField(
                        controller: number,
                        keyboardType: TextInputType.phone,
                        maxLength: 11,
                        style: textfield,
                        decoration: InputDecoration(
                          enabledBorder: OutlineInputBorder(
                            borderSide: (active1 != null && active1!) ||
                                (active2 != null &&
                                    active2!)
                                ? const BorderSide(color: Colors.black)
                                : const BorderSide(color: activecolor),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: (active1 != null && active1!) ||
                                (active2 != null &&
                                    active2!)
                                ? const BorderSide(color: activecolor)
                                : const BorderSide(color: Colors.black),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          hintText: 'Номер телефона',
                          border: OutlineInputBorder(),
                          focusColor: activecolor,
                          contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 11),
                        ),
                      )
                  ),
                ),
                passwordtext('Имя/Фамилия',name),
                passwordtext('Пароль',password),
                passwordtext('Подтвердите пароль',password2),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Text('Уже есть аккаунт?'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 45),
                      child: TextButton(onPressed: () {
                        Navigator.push((context), MaterialPageRoute(builder: (context)=>Signin()));
                      }, child: Text('Войти',style: buttonsignin,)),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: InkWell(onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> Start()));//пока написала это
                    value.get([number.text,name.text,password.text,password2.text]);
                  },
                    child: Container(
                      width: 150,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: RegistrationButtonColor,
                      ),
                      child:Center(child: Text('Регистрация',style: RegistrationButtonStyle,)),
                    ),),
                )
              ],
            ),
          );
        })
      )
    );
  }
  }
class Sin extends ChangeNotifier {
  List registration;
  Sin({required this.registration});
  Box box = Hive.box("registr");
  get (List database) {
    box.add(database);
    registration = box.values.toList();
    box.close();
    notifyListeners();
  }
}
