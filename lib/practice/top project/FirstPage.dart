import 'package:flutter/material.dart';

import 'TopProducts.dart';
import 'search.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height/1.5,
                      child: Stack(
                        children: [
                          Image.asset('images/green.png'),
                          Positioned(
                            right: 0, top: 150,
                              child: Image.asset('images/blue.png')),
                          Container(
                            child: Column(
                              children: [
                                search(context),
                                Padding(
                                  padding:  EdgeInsets.only(right: 20, left: 20),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 220,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          gradient: LinearGradient(
                                              colors: <Color>[
                                                Colors.indigoAccent,
                                                Colors.purple
                                              ]),
                                          borderRadius: BorderRadius.circular(16)
                                        ),
                                        child: Row(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Image.asset('images/caticon.png'),
                                            SizedBox(width: 10,),
                                            Text('All Categories',
                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),)
                                          ],
                                        ),
                                      ),
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: Colors.blue,
                                            width: 2
                                          ),
                                          borderRadius: BorderRadius.circular(16),
                                        ),
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Image.asset('images/percant.png'),
                                            SizedBox(height: 5,),
                                            Text('Sales',
                                              style: TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w700),)
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 20, left: 20, top: 225),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Top products', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),),
                                Icon(Icons.arrow_forward),
                              ],
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(right: 15, top: 250),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                TopProducts(),
                                TopProducts(),
                                TopProducts(),
                                TopProducts(),
                                TopProducts(),
                                TopProducts()
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}