import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    home: DropDawn(),
  ));
}

class DropDawn extends StatefulWidget {
  const DropDawn({super.key});

  @override
  State<DropDawn> createState() => _DropDawnState();
}

class _DropDawnState extends State<DropDawn> {
  var acar = GlobalKey<FormState>();
  List a = ["Cat", "Dog", "Duck", "Tiger"];
  String b = "Cat";
  String d = "";
  int c = 0;
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          setState(() {});
        },
        child: Icon(Icons.percent),
      ),
      body: Column(
        children: [
          DropdownButton(
              value: b,
              items: a
                  .map((e) => DropdownMenuItem(
                child: Text(e),
                value: e,
              ))
                  .toList(),
              onChanged: (val) {
                b = val.toString();
                setState(() {});
              }),
          Form(
              key: acar,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextFormField(
                      onSaved: (val) {
                        d = val!;
                        setState(() {});
                      },
                      validator: (val) {
                        if (val!.length < 6) {
                          return "Hokmany 6 sany harp giriz";
                        } else if (val == "Dasoguz") {
                          return "Acar sozi yanys";
                        } else {
                          return null;
                        }
                      },
                    ),
                    TextFormField(
                      validator: (val) {
                        if (val!.length < 6) {
                          return "Hokmany 8 sany harp giriz";
                        } else if (val == "Dasoguz") {
                          return "Acar sozi yanys";
                        } else {
                          return null;
                        }
                      },
                    )
                  ],
                ),
              )),
          TextButton(
              onPressed: () {
                if (acar.currentState!.validate()) {
                  acar.currentState!.save();
                  debugPrint("Error yok $d");
                }
              },
              child: Text(
                "data",
                style: TextStyle(fontSize: 23, color: Colors.red),
              )),
        ],
      ),
    );
  }
}
