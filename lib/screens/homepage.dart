import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:kuadwa/components/card.dart';
import 'package:kuadwa/components/navCard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 15, bottom: 15),
              child: Text(
                'Featured Profiles',
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.w500),
              ),
            ),
            CarouselSlider(
              options: CarouselOptions(
                  height: MediaQuery.of(context).size.height * .4,
                  enableInfiniteScroll: false,
                  initialPage: 1,
                  viewportFraction: .8,
                  enlargeCenterPage: true),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return MyCard();
                  },
                );
              }).toList(),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text('Good Morning,', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 35, color: Colors.grey),),
                  Text('What would you like to do?', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),),
                  SizedBox(height: 10,),
                  NavCard(),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
