import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:kuadwa/components/card.dart';
import 'package:badges/badges.dart';
import 'package:kuadwa/components/searchbar.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  List<String> items = ['Joe', 'Kobby', 'Kofi', 'Ama', 'Yaw'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.08,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            Padding(
              padding: const EdgeInsets.only(right: 5, top: 3),
              child: SearchBar(),
            )
            // Transform.rotate(
            //   angle: 180 * math.pi / 47,
            //   child: IconButton(
            //       onPressed: () {},
            //       icon: Badge(
            //           elevation: 0, child: Icon(Icons.notifications_none)),
            //       color: Colors.grey),
            // ),
          ]),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Divider(),
                );
              },
              itemCount: items.length,
              itemBuilder: (context, index) {
                return MyCard();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: null,
            child: Icon(Icons.agriculture, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
