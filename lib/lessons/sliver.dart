import 'dart:math';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListVi(),
  ));
}
class ListVi extends StatefulWidget {
  const ListVi({super.key});
  @override
  State<ListVi> createState() => _ListViState();
}
class _ListViState extends State<ListVi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              snap: true,
              // ignore: prefer_const_constructors
              title: Text("Dasoguz welayat"),
              actions: const [Icon(Icons.arrow_back)],
              leading: const Icon(Icons.arrow_back),
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9q7pD8XBiEZArr7fBAvX4qKaMG9FRb-NtDZBHkek&s",
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      color: Color.fromRGBO(Random().nextInt(255),
                          Random().nextInt(255), Random().nextInt(255), 1),
                      height: 100,
                    ),
                    childCount: 5)),
            SliverList(
                delegate: SliverChildListDelegate([
                  const Text("data"),
                  Container(
                    color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255),
                        Random().nextInt(255), 1),
                    height: 100,
                  ),
                ])),
            SliverGrid(
                delegate: SliverChildBuilderDelegate(
                        (context, index) => Container(
                      margin: const EdgeInsets.only(bottom: 10),
                      color: Color.fromRGBO(Random().nextInt(255),
                          Random().nextInt(255), Random().nextInt(255), 1),
                      height: 100,
                    ),
                    childCount: 10),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2)),
            SliverGrid(
                delegate: SliverChildListDelegate([
                  const Text("data"),
                  Container(
                    margin: const EdgeInsets.only(bottom: 10),
                    color: Color.fromRGBO(Random().nextInt(255),
                        Random().nextInt(255), Random().nextInt(255), 1),
                    height: 100,
                  ),
                ]),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8,
                    crossAxisCount: 2)),
          ],
        ));
  }
}