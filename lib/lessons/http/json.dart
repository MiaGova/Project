import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:http/http.dart' as http;

class PostApi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: FutureBuilder(
          future: getmethod(),
          builder: (context, AsyncSnapshot<List<JsonPlachol>> snap) {
            if (snap.hasData) {
              return ListView.builder(itemBuilder: (context, index) {
                return ListTile(
                  title: Text(snap.data![index].title),
                  subtitle: Text(snap.data![index].body),
                );
              },itemCount: snap.data!.length,);
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  Future<List<JsonPlachol>> getmethod() async {
    final response =
    await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
    List res = json.decode(response.body);
    return res.map((e) => JsonPlachol.fromJson(e)).toList();
  }
}
