import 'package:flutter/material.dart';
import 'package:virtual_app/sign_up.dart';
import 'input_fields/email_field.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      key: _emailKey,
      child: Scaffold(
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
                      margin: EdgeInsets.only(top: 48, left: 10),
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
                            alignment: FractionalOffset(0.0, 0.0),
                            child: Text(
                              "Hello",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 50),
                            ),
                          ),
                          Container(
                            height: 10,
                          ),
                          Container(
                            alignment: FractionalOffset(0.0, 0.0),
                            child: Text(
                              "Sing in to you'r Account",
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
                        height: 160,
                        child: Column(
                          children: <Widget>[
                            EmailField(),
                            Container(height: 1, color: Colors.white),
                            inputField("PASSWORD", Icons.lock),
                            Container(
                              height: 1,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      alignment: FractionalOffset(0.0, 0.0),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize: 15),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Align(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                          width: 200,
                          height: 110,
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              if (!_emailKey.currentState.validate()) {
                                print("object");
                              } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                              }
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(90),
                                bottomRight: Radius.circular(90),
                              ),
                            ),
                            child: Text(
                              "SIGN IN",
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
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(bottom: 20, top: 60),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child:
                            FlatButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SignUpPage()));
                          },
                          child: Text(
                            "Don't have an Account? Sing UP",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
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
      ),
    );
  }

  TextFormField inputField(text, icoN) {
    return TextFormField(
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        icon: Icon(icoN, size: 25, color: Colors.white),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white),
        border: InputBorder.none,
        errorStyle: TextStyle(color: Colors.red[600]),
      ),
    );
  }
}
