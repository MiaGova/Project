import 'package:flutter/material.dart';
class MyWidget extends StatefulWidget {
  const MyWidget({Key? key}) : super(key: key);

  @override
  State<MyWidget> createState() => _MyWidgetState();
}
bool check = false;
bool checkitem = false;
String a = "Dasoguz";
String b = 'balcan';
String c = 'Izmir';
bool f = false;
double counter = 0;
bool checkdata = false;
List v = [];
String r = '';
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text('Diger Form Elemanlari',
          style: TextStyle(
              color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700),),
      ),
      body: Column(
        children: [
          CheckboxListTile(
              title: Text('Chexbox title',style: TextStyle(color: Colors.red),),
              subtitle: Text('Checkbox subtitle',style: TextStyle(color: Colors.red),),
              secondary: Icon(Icons.add,color: Colors.red,),
              checkColor: Colors.white,
              activeColor: Colors.purpleAccent,
              value: check,
              onChanged: (val){
                debugPrint(val.toString());
                check = val!;
                setState(() {

                });
              }),
          RadioListTile(
            title: Text('Ankara',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text('Radio Subtitle',style: TextStyle(fontSize: 15,color: Colors.grey),),
              secondary: Icon(Icons.map),
              value: 'balcan',
              groupValue:b,
              onChanged: (val){
            b=val!;
                setState(() {

                });
              }),
          RadioListTile(
              title: Text('Bursa',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text('Radio Subtitle',style: TextStyle(fontSize: 15,color: Colors.grey),),
              secondary: Icon(Icons.map),
              value: 'Izmir',
              groupValue:b,
              onChanged: (val){
                b=val!;
                setState(() {

                });
              }),
          RadioListTile(
              title: Text('Izmir',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text('Radio Subtitle',style: TextStyle(fontSize: 15,color: Colors.grey),),
              secondary: Icon(Icons.map),
              value: 'Ankara',
              groupValue:b,
              onChanged: (val){
                b=val!;
                setState(() {

                });
              }),
          SwitchListTile(
            title: Text('Switch title',style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500),),
              subtitle: Text('Switch subtitle',style: TextStyle(fontSize: 15,color: Colors.grey)),
              secondary: Icon(Icons.refresh),
              value: f,
              onChanged: (val){
                f=val!;
                setState(() {

                });
              }),

          Row(
            children: [
              SizedBox(width: 20,),
              Text('Degeri siderden seceniz'),
            ],
          ),
          Slider(
              activeColor: Colors.orange,
              value: counter,
              max: 10,
              onChanged: (val){
            counter = val;
            setState(() {

            });
              }),
          DropdownButton( value: a,
              items: [
            DropdownMenuItem(value: "Dasoguz",
              child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  color: Colors.blue,
                ),
                SizedBox(
                  width: 5,
                ),
                Text('Mavi',),
              ],
            ))
          ],
              onChanged: (val){
            setState(() {

            });
              }),
          Container(
            width: 500,
            height: 200,
            child: ListView.builder(
              itemCount: v.length,
                itemBuilder: (BuildContext,int index){
              return Dismissible(key: Key(v[index]), child: ListTile(
                title: Text(v[index]),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  color: Colors.purpleAccent,
                  onPressed: () {
                    setState(() {
                      v.removeAt(index);
                    });
                  },
                ),
              ),
              onDismissed: (direction){
                if (direction==DismissDirection.endToStart)
                setState(() {
                  v.removeAt(index);
                });
              },);
            }),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.orange,
        onPressed: () {
          showDialog(context: context, builder: (BuildContext){
            return AlertDialog(
              title: Text('Add Element'),
              content: TextField(
                onChanged: (String value){
                  r =value;
                },
              ),
              actions: [ElevatedButton(onPressed: (){
                setState(() {
                  v.add(r);
                });
              }, child: Text('Add')
                  )],
            );
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
