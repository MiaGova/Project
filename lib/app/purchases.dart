import 'package:flutter/material.dart';
import 'constant.dart';



class Purchases extends StatefulWidget {
  const Purchases({Key? key}) : super(key: key);

  @override
  State<Purchases> createState() => _PurchasesState();
}

class _PurchasesState extends State<Purchases> {
  @override
  int a=0;
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Shop('Мой заказ'),
              Padding(
                padding: const EdgeInsets.only(top: 144),
                child: Container(
                  width: 300,
                  height: 233,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        child: Image.asset('images/Basket.png',color: Colors.black,),
                      ),
                      SizedBox(height: 19,),
                      Purchasestext,
                      Purchasestext2,
                    ],
                  ),
                ),
              )
            ],
          ),
      ),
    );
  }
}
