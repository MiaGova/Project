import 'package:flutter/material.dart';
import 'package:flutterapp/digiwoman/practice/diger/digerlist.dart';
import 'package:flutterapp/myproject/StartList.dart';
import 'package:flutterapp/myproject/constant.dart';
import 'package:flutterapp/myproject/home.dart';
import 'package:provider/provider.dart';
import 'Signconst.dart';
import 'package:hive_flutter/hive_flutter.dart';


class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> {
  late Box box;

  TextEditingController num = TextEditingController();
  TextEditingController pas = TextEditingController();

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
        body: Consumer<Sinin>(
            builder: (BuildContext context, value, Widget? child){
             return SingleChildScrollView(
               child: Column(
                 children: [
                   Shop('Войти'),
                   Padding(
                     padding: const EdgeInsets.only(top: 23),
                     child: Container(
                       width: 327,
                       height: 70,
                       child: TextField(
                         controller: num,
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
                       ),
                     ),
                   ),
                   passwordtext('Пароль',pas),
                   Padding(
                     padding: const EdgeInsets.only(top: 23),
                     child: InkWell(
                       onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (context)=> Start()));
                         value.get([num.text,pas.text]);
                       },
                       child: Container(
                         width: 80,
                         height: 44,
                         decoration: BoxDecoration(
                             color: RegistrationButtonColor,
                             borderRadius: BorderRadius.circular(10)
                         ),
                         child: Center(child: Text('Войти',style: RegistrationButtonStyle,)),
                       ),
                     ),
                   )
                 ],
               ),
             );
            }
        ),
      ),
    );
  }
}
//provider
class Sinin extends ChangeNotifier {
  List sign;
  Sinin({required this.sign});
  Box box = Hive.box("signin");
  get (List data) {
    box.add(data);
    sign = box.values.toList();
    box.close();
    notifyListeners();
  }
}