import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/After_main.dart';
import 'package:flutter_complete_guide/main.dart';

class LauchScreen extends StatefulWidget {
  const LauchScreen({Key key}) : super(key: key);

  @override
  _LauchScreenState createState() => _LauchScreenState();
}

class _LauchScreenState extends State<LauchScreen> {
  List images = [
    "background1.png",
    "background2.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (_, index) {
            return Container(
              width: double.maxFinite,
              height: double.maxFinite,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("images/" + images[index]),
                      fit: BoxFit.cover)),
              child: Container(
                margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Column(
                    //   crossAxisAlignment: CrossAxisAlignment.start,
                    //   children: [
                    //     Container(
                    //         // height: 200,
                    //         // width: 200,
                    //         // decoration: BoxDecoration(
                    //         //     image: DecorationImage(
                    //         //         image: AssetImage("images/" + images[index]),
                    //         //         fit: BoxFit.cover)),
                    //         )
                    //   ],
                    // ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: List.generate(2, (indexSlider) {
                        return Container(
                          margin: const EdgeInsets.all(3),
                          width: 8,
                          height: index == indexSlider ? 35 : 8,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: index == indexSlider
                                  ? Colors.pinkAccent
                                  : Colors.purple),
                        );
                      }),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 50,
                          width: 100,
                          child: RaisedButton.icon(
                              color: Colors.amberAccent,
                              splashColor: Colors.amber.shade900,
                              highlightColor: Colors.amber.shade700,
                              elevation: 20,
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => After_Main()));
                              },
                              icon: Icon(Icons.arrow_forward_ios),
                              label: Text("Start")),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
