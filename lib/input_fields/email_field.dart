import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  String _email;
  final _emailKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      key: _emailKey,
      children: <Widget>[
        Container(
          child: TextFormField(
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            decoration: InputDecoration(
              icon: Icon(Icons.mail, size: 25, color: Colors.white),
              labelText: "EMAIL",
              labelStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              errorStyle: TextStyle(color: Colors.red[600]),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.red)
              )
            ),
            validator: (String value) {
              if (!value.contains("@gmail.com")) {
                return "Ви не ввели E-mail!";
              } else {
                return null;
              }
            },
            onSaved: (String value) {
              _email = value;
              print(_email);
            },
          ),
        ),
      ],
    );
  }
}
