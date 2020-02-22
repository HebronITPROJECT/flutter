import 'package:flutter/material.dart';

class NameField extends StatefulWidget {
  @override
  _NameFieldState createState() => _NameFieldState();
}

class _NameFieldState extends State<NameField> {
  String _name;
  final _nameKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      key: _nameKey,
      children: <Widget>[
        Container(
          child: TextFormField(
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            decoration: InputDecoration(
              icon: Icon(Icons.person, size: 25, color: Colors.white),
              labelText: "NAME",
              labelStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              errorStyle: TextStyle(color: Colors.red[600]),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.red)
              )
            ),
            validator: (String value) {
              if (value.isEmpty) {
                return "Enter NAME";
              } else {
                return null;
              }
            },
            onSaved: (String value) {
              _name = value;
              print(_name);
            },
          ),
        ),
      ],
    );
  }
}
