import 'package:flutter/material.dart';

class EmailField extends StatefulWidget {
  @override
  _EmailFieldState createState() => _EmailFieldState();
}

class _EmailFieldState extends State<EmailField> {
  String _email;
  final _emailKey = GlobalKey<FormState>();
  bool _pressed = true;
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
              icon: Icon(Icons.mail,
                  size: 25, color: _pressed ? Colors.white : Colors.red),
              labelText: "EMAIL",
              labelStyle: _pressed
                  ? TextStyle(color: Colors.white)
                  : TextStyle(color: Colors.red),
              border: InputBorder.none,
              errorStyle: TextStyle(color: Colors.red),
            ),
            validator: (value) {
              if (!value.contains("@gmail.com")) {
                // return "Ви не ввели E-mail!";
                setState(() {
                  _pressed = !_pressed;
                });
                return;
              } else {
                print("E-mail:$value");
                return null;
              }
            },
            onSaved: (String value) {
              _email = value;
            },
          ),
        ),
      ],
    );
  }
}
