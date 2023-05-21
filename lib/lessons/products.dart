import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);
  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset('images/06.jpg'),
          Text('Täze aý şöhlat'),
          SizedBox(height: 10,),
          Row(
            children: [
              Text('50 manat', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
              SizedBox(width: 10,),
              Text('50 manat', style: TextStyle(fontSize: 12, decoration: TextDecoration.lineThrough),)
            ],
          ),
          SizedBox(height: 10,),
          count == 0 ? GestureDetector(
            onTap: (){
              setState(() {
                count++;
              });
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.shopping_basket_outlined,color: Colors.red,),
                  Text('Sebede gos',style: TextStyle(color: Colors.red),)
                ],
              ),
            ),
          ) :Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                    onTap: (){
                      setState(() {
                        count--;
                      });
                    },
                    child: Text('-')
                ),
                Text('$count sany'),
                GestureDetector(
                    onTap: (){
                      setState(() {
                        count++;
                      });
                    },
                    child: Text('+')
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}