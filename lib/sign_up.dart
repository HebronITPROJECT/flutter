import 'package:flutter/material.dart';
import 'input_fields/email_field.dart';
import 'input_fields/name_field.dart';
import 'input_fields/phone_number.dart';

class SignUpPage extends StatefulWidget {
  SignUpPage({Key key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.indigoAccent[100], Colors.indigoAccent]),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(

                    margin: EdgeInsets.only(top: 40, left: 10),
                    alignment: Alignment.bottomLeft,
                    child: FlatButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: Icon(Icons.arrow_back,
                          color: Colors.white, size: 40.0),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40, right: 40, top: 88),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Text(
                            "Let's create you'r account!",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 40),
                          ),
                        ),
                        Container(
                          height: 10,
                        ),
                        Container(
                          alignment: FractionalOffset(0.0, 0.0),
                          child: Text(
                            "Enter you'r details",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Container(
                      margin: EdgeInsets.only(
                          left: 40, right: 40, top: 40, bottom: 20),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.indigoAccent),
                      padding: EdgeInsets.only(left: 20, right: 20),
                      height: 200,
                      child: Column(
                        children: <Widget>[
                          NameField(),
                          Container(height: 1, color: Colors.white),
                          Container(
                            height: 1,
                            color: Colors.white,
                          ),
                          EmailField(),
                          Container(height: 1, color: Colors.white),
                          Container(
                            height: 1,
                            color: Colors.white,
                          ),
                          PhoneNumberField(),
                          Container(height: 1, color: Colors.white),
                          Container(
                            height: 1,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                   Container(
                        margin: EdgeInsets.only(top: 95),
                        child: Align(
                          alignment: Alignment.bottomRight,
                          child: SizedBox(
                            width: 200,
                            height: 110,
                            child: RaisedButton(
                              color: Colors.white,
                              onPressed: () {
                                // if (!_emailKey.currentState.validate()) {
                                //   print("object");
                                // } else {
                                // Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //         builder: (context) => SignUpPage()));
                                // }
                              },
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(90),
                                  bottomLeft: Radius.circular(90),
                                ),
                              ),
                              child: Text(
                                "SIGN UP",
                                style: TextStyle(
                                  color: Colors.indigoAccent,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
