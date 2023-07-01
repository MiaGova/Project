import 'package:flutter/material.dart';
import '../Sign.dart';
import 'productsconst.dart';
import 'package:flutterapp/marketmap.dart';
class NewPro extends StatefulWidget {
  const NewPro({Key? key}) : super(key: key);

  @override
  State<NewPro> createState() => _NewProState();
}

class _NewProState extends State<NewPro> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: (){
            Navigator.pop(context);
          },
            icon: Icon(Icons.arrow_back_ios,
              color: ButtonColor,),),
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
        body: SingleChildScrollView(
          child: Column(
            children: [
              GridView.builder(
                itemCount: images.length,
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              childAspectRatio: 0.5,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              maxCrossAxisExtent: 200
          ),
                  itemBuilder: (BuildContext context, int index)=>InkWell(
          onTap: (){

          },
          child: Container(
            width: 152,
            height: 233,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 152,
                  height: 149,
                  child: Image.network(images[index]),
                ),
                Text(p[index],style: Companystyle,),
                Text(d[index],style: Descriptionstyle,),
                Text(price[index],style: Pricestyle,)
              ],
            ),
          ),
      ))
            ],
          ),
        ),
      ),
    );
  }
}
