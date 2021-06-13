import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:kuadwa/components/card.dart';
import 'package:badges/badges.dart';
import 'package:kuadwa/components/searchbar.dart';
import 'package:kuadwa/utils/api.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  String category = 'farms';

  dynamic farms = [];
  dynamic businesses = [];
  dynamic currentItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getFarms();
    _getBusinesses();
  }

  _getFarms() async {
    await getFarms().then((res) => setState(() => farms = res['details']));
  }

  _getBusinesses() async {
    await getAgriBus()
        .then((res) => setState(() => businesses = res['details']));
  }

  _setCat() => category == 'farms'
      ? setState(() => currentItems = farms)
      : setState(() => currentItems = businesses);

  @override
  Widget build(BuildContext context) {
    // run this anytime something changes
    _setCat();

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
              itemCount: currentItems.length,
              itemBuilder: (context, index) {
                return MyCard(
                  image: currentItems[index]['cover_image_thumbnail'],
                  name: currentItems[index]['name'],
                );
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
            onPressed: () {
              category == 'farms'
                  ? setState(() => category = 'businesses')
                  : setState(() => category = 'farms');
            },
            child: category == 'farms'
                ? Icon(Icons.agriculture, color: Colors.white)
                : Icon(Icons.business_center_sharp, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
