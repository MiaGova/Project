import 'package:flutter/material.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Lesson(),
  ));
}
class Lesson extends StatefulWidget {
  const Lesson({super.key});
  @override
  State<Lesson> createState() => _LessonState();
}
class _LessonState extends State<Lesson> {
  String a = "tm";
  String che = "";
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: Column(
              children: [
                Stack(
                  children: [
                    Image.network(
                        "https://cdn.ynamdar.com/ynamdar/images/product/ZNXI200050_1.jpg?version=66"),
                    Positioned(bottom: 0, left: 0, child: Icon(Icons.person)),
                  ],
                ),
                Text.rich(
                  TextSpan(text: a == "tm" ? "Dasoguz " : "ASGABAT", children: [
                    TextSpan(text: "Welayat ", style: TextStyle(color: Colors.red)),
                    TextSpan(text: "Flutter")
                  ]),
                  style: TextStyle(fontSize: 20),
                ),
                DropdownButton(
                    value: a,
                    items: [
                      DropdownMenuItem(
                          value: "tm",
                          child: Row(
                            children: [Icon(Icons.person), Text("Person")],
                          )),
                      DropdownMenuItem(
                          value: "ru",
                          child: Row(
                            children: [Icon(Icons.person), Text("child")],
                          )),
                    ],
                    onChanged: (val) {
                      a = val!;
                      setState(() {});
                    }),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    // maxLength: 8,
                    //obscureText: true,
                    //obscuringCharacter: " ",
                    decoration:  InputDecoration(
                      // hintText: "Dasoguz",
                      // labelText: "welayat",
                      // label: Icon(Icons.abc),
                      // helperText: "Flutter",
                      // helperMaxLines: 3,
                      // prefixText: "+993",
                      // suffix: Icon(Icons.remove_red_eye),
                      // counterText: "mOBILE",
                      // errorText: "Error",
                       //iconColor: Colors.black,
                      //fillColor: Colors.purpleAccent,
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.red)),
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
                      che = val;
                      setState(() {});
                    },
                  ),
                ),
                Text(che)
              ],
            )),
      ],
    );
  }
}
