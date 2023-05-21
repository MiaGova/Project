import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyWidget(),
  ));
}
class MyWidget extends StatelessWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      backgroundColor: Colors.white,
                      title: Row(
                        children: [
                          Text("Select welayat"),
                        ],
                      ),
                      actions: [
                        Column(
                          children: [
                            TextButton(onPressed: (){}, child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.black,),
                                Text('Ashgabat',style: TextStyle(color: Colors.black),)
                              ],
                            )),
                            TextButton(onPressed: (){}, child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.black,),
                                Text('Mary',style: TextStyle(color: Colors.black),)
                              ],
                            )),
                            TextButton(onPressed: (){}, child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.black,),
                                Text('Lebap',style: TextStyle(color: Colors.black),)
                              ],
                            )),
                            TextButton(onPressed: (){}, child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.black,),
                                Text('Balcan',style: TextStyle(color: Colors.black),)
                              ],
                            )),
                            TextButton(onPressed: (){}, child: Row(
                              children: [
                                Icon(Icons.add,color: Colors.black,),
                                Text('Dashoguz',style: TextStyle(color: Colors.black),)
                              ],
                            ))
                          ],
                        )
                      ],
                    );
                  },
                );
              },
              child: Text(
                "Go to the first page",
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
      floatingActionButton: FloatingActionButton.small(
        focusElevation: 100,
        backgroundColor: Colors.purpleAccent,
        onPressed: () {},
        child: Icon(Icons.label_outline),
      ),
    );
  }
}
