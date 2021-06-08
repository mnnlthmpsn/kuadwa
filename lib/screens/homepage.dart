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

  List<Map> farms = [];
  List<Map> businesses = [];
  List<Map> currentItems = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getFarms();
    _getBusinesses();
    _setCat();
  }

  _setCat() {
    category == 'farms' ? currentItems = farms : currentItems = businesses;
  }

  _getFarms() async {
    await getFarms().then((res) => setState(() => farms = res.data));
  }

  _getBusinesses() async {
    await getAgriBus().then((res) => setState(() => businesses = res.data));
    print(businesses);
  }

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
                  ? category = 'businesses'
                  : category = 'farms';
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
