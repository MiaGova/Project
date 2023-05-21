import 'package:flutter/material.dart';
import 'dart:developer';
void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyAni(),
  ));
}
class MyAni extends StatefulWidget {
  const MyAni({Key? key}) : super(key: key);

  @override
  State<MyAni> createState() => _MyAniState();
}

class _MyAniState extends State<MyAni> {
  late int counter;
  @override
  void initState(){
    log('# MyAni init state');
    counter = 0;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    log('#MyAni - call method build(context)');
    return Scaffold(
      appBar: AppBar(
        title: const Text('ValueKey1'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ScaleAnimated(
              key: null,
                child: Text('Widget without key: $counter',style: TextStyle(
              fontSize: 30
            ),),
                duration: const Duration(seconds: 2)),
            ScaleAnimated(
                key: ValueKey(counter),
                child: Text('Widget with key: $counter',style: TextStyle(
                    fontSize: 30
                ),),
                duration: const Duration(seconds: 2)),
            ElevatedButton(onPressed: (){
              setState(() {
                counter++;
              });
            },
                child: const Text('press'))
          ],
        ),
      ),
    );
  }
}
class ScaleAnimated extends StatefulWidget {
  final Widget child;
  final Duration duration;

  const ScaleAnimated({Key? key,required this.child,required this.duration}) : super(key: key);

  @override
  State<ScaleAnimated> createState() => _ScaleAnimatedState();
}

class _ScaleAnimatedState extends State<ScaleAnimated>
with SingleTickerProviderStateMixin{
  late final AnimationController _controller;
  late final Animation<double>_animation;
  @override
  void initState(){
    super.initState();
    log('# ScaleAnimated init state');
    _controller = AnimationController(vsync: this,
      duration: widget.duration,
      upperBound: 1.0,
      lowerBound: 0.0
    );
    _controller.forward();
    _animation = CurvedAnimation(parent: _controller, curve: Curves.linear);
  }
  @override
  Widget build(BuildContext context) {
    return ScaleTransition(scale: _animation,child: widget.child,);
  }
}


