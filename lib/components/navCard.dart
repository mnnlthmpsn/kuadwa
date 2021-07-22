import 'package:flutter/material.dart';

class NavCard extends StatefulWidget {
  const NavCard({Key? key}) : super(key: key);

  @override
  _NavCardState createState() => _NavCardState();
}

class _NavCardState extends State<NavCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15), color: Colors.black12),
    );
  }
}
