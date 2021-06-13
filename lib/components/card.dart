import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final image;
  final name;

  MyCard({this.image, this.name});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 120,
          width: 120,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.white10,
              blurRadius: 40,
              spreadRadius: 2,
            )
          ]),
          child: Card(
            elevation: 0,
            color: Colors.white,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Image.network(
                image != null
                    ? 'https://www.kuadwa.com/${image}'
                    : 'https://images.unsplash.com/photo-1557234195-bd9f290f0e4d?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YWdyaWN1bHR1cmV8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60',
                height: 120,
                width: 120,
                fit: BoxFit.cover,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        Container(
          height: 130,
          width: MediaQuery.of(context).size.width * 0.60,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20.0, 0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text(name)],
            ),
          ),
        ),
      ],
    );
  }
}
