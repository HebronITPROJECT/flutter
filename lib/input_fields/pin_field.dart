import 'package:flutter/material.dart';

class PinField extends StatefulWidget {
  @override
  _PinFieldState createState() => _PinFieldState();
}

class _PinFieldState extends State<PinField> {
  String _pin;
  final _pinKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      key: _pinKey,
      children: <Widget>[
        Container(
          child: TextFormField(
            obscureText: true,
            style:
                TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
            decoration: InputDecoration(
              icon: Icon(Icons.vpn_key, size: 25, color: Colors.white),
              labelText: "PIN",
              labelStyle: TextStyle(color: Colors.white),
              border: InputBorder.none,
              errorStyle: TextStyle(color: Colors.red[600]),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color:Colors.red)
              )
            ),
            validator: (String value) {
              if (value.isEmpty) {
                return "Enter PIN";
              } else {
                return null;
              }
            },
            onSaved: (String value) {
              _pin = value;
              print(_pin);
            },
          ),
        ),
      ],
    );
  }
}
