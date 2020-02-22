import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneNumberField extends StatefulWidget {
  @override
  _PhoneNumberFieldState createState() => _PhoneNumberFieldState();
}

class _PhoneNumberFieldState extends State<PhoneNumberField> {
  String _phoneNumber;
  final _emailKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var numberFormatter = new MaskTextInputFormatter(
        mask: '+## (###) ###-##-##', filter: {"#": RegExp(r'[0-9]')});
    return Column(
      key: _emailKey,
      children: <Widget>[
        Container(
          child: TextFormField(
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            inputFormatters: [numberFormatter],
            keyboardType: TextInputType.phone,
            decoration: InputDecoration(
                icon: Icon(Icons.phone, size: 25, color: Colors.white),
                labelText: "PHONE NUMBER",
                labelStyle: TextStyle(color: Colors.white),
                border: InputBorder.none,
                errorStyle: TextStyle(color: Colors.red[600]),
                errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red))),
            validator: (String value) {
              if (value.isEmpty) {
                return "Ви не ввели номер!";
              }
              if (value.length < 19) {
                return "Неправильний формат!";
              } else
                return null;
            },
            onSaved: (String value) {
              _phoneNumber = value;
              print(_phoneNumber);
            },
          ),
        ),
      ],
    );
  }
}
