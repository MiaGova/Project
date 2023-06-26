import 'package:flutter_svg/flutter_svg.dart';
import'package:flutter/material.dart';
import 'package:flutterapp/myproject/StartList.dart';
import 'package:flutterapp/myproject/home.dart';
import 'package:flutterapp/myproject/products/newproducts.dart';
import 'package:flutterapp/myproject/purchases.dart';
import '../marketmap.dart';
import 'package:like_button/like_button.dart';


const showallcolor = TextStyle(color: Color.fromRGBO(238, 150, 234, 1),fontSize: 13,fontWeight: FontWeight.w300);
const LabelStyle = TextStyle(fontWeight: FontWeight.w800,fontSize: 20);
const Buttonstyle = TextStyle(fontSize: 13,color: Color.fromRGBO(238, 150, 234, 1),fontWeight: FontWeight.w300);
const Productlabelstyle = TextStyle(fontWeight: FontWeight.w600,fontSize: 13);
const Productdescriptionstyle = TextStyle(fontSize: 13,fontWeight: FontWeight.w400);
const ProductPricestyle = TextStyle(fontSize: 15,fontWeight: FontWeight.w600);
const Categorieslabelstyle = TextStyle(fontWeight: FontWeight.w400,fontSize: 20,color: Color.fromRGBO(238, 150, 234, 1));


const List<String> list = <String>['One', 'Two', 'Three', 'Four'];
String dropdownValue = list.first;

//home
Products( List image ,List companyname,List description,List price){
  return SizedBox(
    width: double.infinity,height: 210,
    child: ListView.builder(
        itemCount: p.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context,int index)=>
            Padding(padding: EdgeInsets.only(left: 7,right: 7),
                child: Stack(
                  children: [
                    Container(
                        width: 138,height: 210,
                        child: Column(
                          children: [
                            Container(
                                width: 138,
                                height: 102,
                                child: Image.network(image[index])),
                            Padding(
                              padding: const EdgeInsets.only(top: 5),
                              child: Text(companyname[index],style: Productlabelstyle),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5,left: 20),
                              child: Text(description[index],style: Productdescriptionstyle),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 5,left: 25),
                                  child: Text(price[index],style: ProductPricestyle),
                                ),
                                Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: InkWell(
                                      onTap: (){

                                      },child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(10),
                                          border: Border.all(color: Colors.black)
                                      ),
                                      width: 25,height: 32,
                                      child: Center(
                                        child: Icon(Icons.add,color: Colors.black,size: 15,),
                                      ),
                                    ),
                                    )
                                ),
                              ],
                            ),
                          ],
                        )),
                    Positioned(
                      top: 10,right: 10,
                      child: LikeButton(
                        onTap: onLikeButtonTapped,
                        circleColor:
                        CircleColor(start: Color.fromRGBO(232, 200, 230, 1), end: Color.fromRGBO(232, 200, 230, 1)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color.fromRGBO(232, 200, 230, 1),
                          dotSecondaryColor: Color.fromRGBO(232, 200, 230, 1),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            Icons.favorite,
                            color: isLiked ? Color.fromRGBO(232, 200, 230, 1) : Colors.white,
                            size: 30,
                          );
                        },
                        ),
                    ),
                      ]
                ),)
    ),
  );
}

Future<bool> onLikeButtonTapped(bool isLiked) async{

  return !isLiked;
}


ProductsHeader(String product){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 44,left: 10,right:30,bottom: 31),
        child: Text(product,style: LabelStyle),
      ),
      TextButton(onPressed: (){

      }, child: Padding(
        padding: const EdgeInsets.only(right: 17),
        child: Text('Показать все',style: showallcolor),
      ))
    ],
  );
}


//purchases


const Purchasestext = Text('Сейчас здесь пусто ',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 20),);
const Purchasestext2 = Padding(
  padding: EdgeInsets.only(left: 20,right: 13),
  child:   Text('Добавленные вами продукты будут отображаться здесь.',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w200),),
);

Shop(String appbartext){
  return Center(
    child: Container(
      child: Text(appbartext,style: registration),
    ),
  );
}
const registration = TextStyle(color: Colors.black,fontSize: 24,fontWeight: FontWeight.w500);



//favourites

FavouritePro(List image ,List companyname,List description,List price){
  return SizedBox(
        width: double.infinity,height: 700,
        child: ListView.builder(
          scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (BuildContext context,int index)=>
                Dismissible(
                  background: slideLeftBackground(),
                  key: Key(p[index]),
                  child: InkWell(
                    onTap: (){
                      print('${p[index]} clicked');
                    },
                    child: Padding(padding: EdgeInsets.only(left: 0,right: 30),
                        child: Material(
                          elevation: 10,
                              child: Container(
                                  width: 340,height: 85,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                          width: 85,
                                          height: 85,
                                          child: Image.network(image[index])),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(top: 5),
                                            child: Text(companyname[index],style: ProLabel),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(top: 5,),
                                            child: Text(description[index],style: ProDescription),
                                          ),
                                              Padding(
                                                padding: const EdgeInsets.only(top: 5,),
                                                child: Text(price[index],style: ProPrice),
                                              ),
                                        ],
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.only(top: 15,right: 10),
                                        child: InkWell(
                                          onTap: (){
                                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext)=>Purchases()));
                                          },child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(color: Colors.black)
                                          ),
                                          width: 30,height: 37,
                                          child: Center(
                                            child: Icon(Icons.add,color: Colors.black,size: 20,),
                                          ),
                                        ),
                                        ),
                                      )
                                    ],
                                  )),

                          )),
                  ),
                )
        ),
      );
}
const ProLabel = TextStyle(fontWeight: FontWeight.w600,fontSize: 16);
const ProDescription = TextStyle(fontWeight: FontWeight.w400,fontSize: 16);
const ProPrice = TextStyle(fontWeight: FontWeight.w600,fontSize: 20);


Widget slideLeftBackground() {
  return Container(
    color: Colors.red,
    child: Align(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Icon(
            Icons.delete,
            color: Colors.white,
          ),
          Text(
            " Delete",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.right,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      alignment: Alignment.centerRight,
    ),
  );
}

//Profile


Prof(String text,String img,BuildContext context,Widget widg)=>
    InkWell(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>widg));
        },
        child: Padding(
          padding: const EdgeInsets.only(top: 20,left: 15,right: 15),
          child: Material(
            elevation: 10,
            child: Expanded(
              flex: 2,
              child: Container(
                height: 57,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 20
                      ),
                        child: SvgPicture.asset(img)),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Text(text,style: TextStyle(fontWeight: FontWeight.w200,fontSize: 20),),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
