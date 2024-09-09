import 'package:fitness_app_live/models/DetailPageButton.dart';
import 'package:fitness_app_live/models/DetailPageTitle.dart';
import 'package:fitness_app_live/models/ListWheelViewScroller.dart';
import 'package:flutter/material.dart';

class WeightPage extends StatefulWidget {
  const WeightPage({super.key});

  @override
  State<WeightPage> createState() => _WeightPageState();
}

class _WeightPageState extends State<WeightPage> {
  @override
  Widget build(BuildContext context) {
    List<String> items = [];
    for (int i = 140; i < 200; i++) {
      items.add(i.toString()+" lb");
    }
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
          top: size.height * 0.06,
          left: size.width * 0.05,
          right: size.width * 0.05,
          bottom: size.height * 0.03,
        ),
        child: Column(
          children: [
            DetailPageTitle(
                text: 'This helps us to create a personlized plan for you',
                title: "What is your Height?",
                color: Colors.white),
            SizedBox(
              height: size.height * 0.055,
            ),
            SizedBox(
              height: size.height * 0.5,
              child: listwheelScrollView(items: items,),
            ),
            DetailPageButton(text: 'Next', onTap: () {
              Navigator.pushNamed(context, '/goal');
            }, showBackButton: true,
              onBackTap: (){
                Navigator.pop(context);
              },),
          ],
        ),
      ),
    );
  }
}
