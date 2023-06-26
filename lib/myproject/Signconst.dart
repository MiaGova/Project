import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

String password = "";
String password2 = "";
String b = "";
String check = "";
bool active1 = true;
bool active2 = true;
const activecolor = Color.fromRGBO(232, 200, 230, 1);
const registration = TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500);
const textfield = TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.w500);
bool secure = true;
String c = '';
const buttonsignin = TextStyle(color: Color.fromRGBO(238, 150, 234, 1),fontSize: 15,fontWeight: FontWeight.w300);
const RegistrationButtonStyle = TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500);
const RegistrationButtonColor = Color.fromRGBO(232, 200, 230, 1);

//Textfields


passwordtext (String hinttext,TextEditingController controller)=>
    Padding(
      padding: const EdgeInsets.only(top: 23),
      child: Container(
        width: 327,
        height: 54,
        child: TextField(
          onSubmitted: (text) {
            print("onSubmitted");
            print("Введенный текст: $text");

          },
          controller: controller,
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
            focusColor: activecolor,
            hintText: hinttext,
            contentPadding: EdgeInsets.symmetric(vertical: 10.0,horizontal: 11),
          ),
        ),
      ),
    );



