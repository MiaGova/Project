import 'package:flutter/material.dart';

class TopProducts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 5, left: 5),
      width: 190,
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white
      ),
      child: Column(
        children: [
          Stack(
            children: [
              Image.asset('images/image-product.png', width: 190, height: 175, fit: BoxFit.fill,),
              Positioned(child: Image.asset('images/pervector.png', width: 55, height: 39, fit: BoxFit.fill,), top: 0, left: 0,),
              Positioned(child: Image.asset('images/newvector.png', width: 35, height: 19, fit: BoxFit.fill,), top: 0, right: 0,)
            ],
          ),
          SizedBox(height: 10,),
          Padding(
            padding:  EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Text('Xiaomi Wi-Fi Router wire', style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),)
              ],
            ),
          ),
          SizedBox(height: 2,),
          Padding(padding: EdgeInsets.only(left: 15),
          child: Row(
            children: [
              Text('200', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.blue),),
              SizedBox(width: 8,),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                        color: Colors.blue,
                        width: 2
                    )
                ),
                child: Text('TMT', style: TextStyle(color: Colors.blue, fontSize: 8, fontWeight: FontWeight.w700),),
              ),
              SizedBox(width: 18,),
              Text('300 TMT', style: TextStyle(color: Colors.black12, fontSize: 10, fontWeight: FontWeight.w600),),
            ],),),
          SizedBox(height: 12,),
          Padding(
            padding:  EdgeInsets.only(left: 15),
            child: Row(
              children: [
                Image.asset('images/stars.png')
              ],
            ),
          )
        ],
      ),
    );
  }

}