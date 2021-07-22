import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final image;
  final name;

  MyCard({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Center(
            child: Text(
          'hey there',
          style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.w600,
              shadows: [Shadow(blurRadius: 10)]),
        )),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            color: Colors.black12,
            image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://images.unsplash.com/photo-1535379453347-1ffd615e2e08?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8YWdyaWN1bHR1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60')),
            boxShadow: [
              BoxShadow(
                color: Colors.white10,
                blurRadius: 40,
                spreadRadius: 2,
              )
            ]));
  }
}
