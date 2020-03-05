import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          width: 134,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 18,
              width: 18,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 8,
        ),
        Container(
          width: 134,
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: 18,
              width: 18,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          height: 50,
          width: 140,
          margin: EdgeInsets.only(left: 20, right: 20, top: 10),
          child: Text(
            "HEBRON",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 35,
            ),
          ),
        ),
        Container(
          width: 140,
          child: Text(
            "Education Charity Organization",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
              fontSize: 17,
            ),
          ),
        ),
      ],
    );
  }
}
