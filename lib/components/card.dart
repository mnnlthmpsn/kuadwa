import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 180,
          width: 180,
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
                'https://images.unsplash.com/photo-1589621316382-008455b857cd?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Y3VjdW1iZXJ8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=400&q=60',
                height: 150,
                width: 150,
                fit: BoxFit.cover,
              ),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
        Container(
          height: 180,
          width: MediaQuery.of(context).size.width * 0.45,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 20.0, 0, 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[Text('one'), Text('two'), Text('three')],
            ),
          ),
        ),
      ],
    );
  }
}
