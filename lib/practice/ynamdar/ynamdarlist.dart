import 'package:flutter/material.dart';
import 'ynamdarlist2.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
String a = 'ru';
String b = 'tm';
String c = '';
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            snap: true,
            // ignore: prefer_const_constructors
            leading: Row(
              children: [
                SizedBox(width: 20,),
                Container(
                  child: Image.asset('images/category.png',width: 15,height: 15,color: Colors.black,),
                ),
                SizedBox(width: 10,),
                Text('Kategoriyalar',style: TextStyle(fontSize: 15,color: Colors.black),),
                SizedBox(width: 10,),
                    IconButton(onPressed: (){}, icon: Icon(Icons.place_outlined,color: Colors.black,size: 15,)),
                    Text('Dashoguz',style: TextStyle(fontSize:15,color: Colors.black)),
              ],
            ),
            actions: [
              Column(
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
                                  Text("Iceri gir"),
                                ],
                              ),
                              actions: [
                                Column(
                                  children: [
                                    TextField(
                                      decoration:  InputDecoration(
                                         labelText: "Telefon",
                                         prefixText: "+993",
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.red)),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green)),
                                      ),
                                      // textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(color: Colors.red),
                                      // autofocus: true,
                                      // readOnly: ,
                                      onChanged: (val) {},
                                      onSubmitted: (val) {
                                        c = val;
                                        setState(() {});
                                      },
                                    ),
                                    SizedBox(height: 20,),
                                    TextField(
                                       maxLength: 8,
                                      obscureText: true,
                                      obscuringCharacter: ".",

                                      decoration:  InputDecoration(
                                        // hintText: "Dasoguz",
                                        labelText: "Acar soz",
                                        border: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.red)),
                                        suffix: Icon(Icons.remove_red_eye),
                                        enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.grey)),
                                        focusedBorder: OutlineInputBorder(
                                            borderSide: BorderSide(color: Colors.green)),
                                        helperText:'Acar sozi unutdym',
                                      ),
                                      // textAlign: TextAlign.center,
                                      keyboardType: TextInputType.number,
                                      style: TextStyle(color: Colors.red),
                                      // autofocus: true,
                                      // readOnly: ,
                                      onChanged: (val) {},
                                      onSubmitted: (val) {
                                        c = val;
                                        setState(() {});
                                      },
                                    ),
                                    Row(
                                      children: [
                                        TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: Center(
                                              child: ElevatedButton(
                                                onPressed: (){},
                                                child: Row(
                                                  children: [
                                                    Icon(Icons.exit_to_app),
                                                    Text('Iceri gir'),
                                                  ],
                                                ),
                                                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.green),
                            ),),
                                              ),
                                            )
                                      ],
                                    )
                                  ],
                                )
                              ],
                            );
                          },
                        );
                      },
                      child: Icon(Icons.exit_to_app,color: Colors.black,))
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
