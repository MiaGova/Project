import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Page_View()));
}
class Page_View extends StatelessWidget {
  final PageController controller=PageController();
  Page_View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: BouncingScrollPhysics(),
      controller: controller,
      scrollDirection: Axis.horizontal,
      pageSnapping: false,
      children: <Widget>[
        Container(
          color: Colors.red,
          child: Center(child: Text('Stop')),
        ),
        Container(
          color: Colors.orange,
          child: Center(child: Text('Ready?')),
        ),
        Container(
            color: Colors.green,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Go',style: TextStyle(fontSize: 40),),
                ElevatedButton(onPressed: (){
                  //controller.jumpTo(0);
                  controller.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.easeInBack);
                }, child: Text('Reload'))
              ],
            )
        ),
      ],
    );
  }
}
