import'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
void main(List<String> args) {
  runApp(MaterialApp(
    home: PageVeiw(),
  ));
}
class PageVeiw extends StatefulWidget {
  const PageVeiw({super.key});

  @override
  State<PageVeiw> createState() => _PageVeiwState();
}

class _PageVeiwState extends State<PageVeiw> {
  final _control = PageController(
    initialPage: 0,
  );
  List images = [
    "https://cdn.pixabay.com/photo/2018/01/14/23/12/nature-3082832__340.jpg",
    "data:image/jpeg;base64,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",
    "data:image/jpeg;base64,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",
    "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg"
  ];
  int a = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text('data'),
          SizedBox(
            width: double.infinity,
            height: 100,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller: _control,
              children: [
                Text("data"),
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRNYVsNqkJewog0yU2Ji4a5xPtqdTc47RsMqw&usqp=CAU",
                  fit: BoxFit.fill,
                )
              ],
            ),
          ),
          Stack(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                    height: 200,
                    autoPlay: true,
                    autoPlayAnimationDuration: Duration(seconds: 1),
                    // initialPage: 1,
                    viewportFraction: 0.8,
                    // reverse: true,
                    onPageChanged: ((index, er) {
                      a = index;
                      setState(() {});
                    }),
                    // scrollDirection: Axis.vertical,
                    // enableInfiniteScroll: false,
                    autoPlayCurve: Curves.bounceInOut),
                itemBuilder: (BuildContext context, int index, int realIndex) {
                  return Image.network(
                    images[index],
                    fit: BoxFit.fill,
                  );
                },
                itemCount: images.length,
              ),
              Positioned(
                right: 0,
                left: 0,
                bottom: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: images
                      .map(
                        (e) => Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: images.indexOf(e) == a
                              ? Colors.red
                              : Colors.blue,
                          shape: BoxShape.circle),
                    ),
                  )
                      .toList(),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
