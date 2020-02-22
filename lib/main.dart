import 'package:flutter/material.dart';
import 'package:virtual_app/sign_in.dart';
import 'package:virtual_app/sign_up.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstWidget(),
    );
  }
}

class FirstWidget extends StatelessWidget {
  // final GlobalKey<FormState> _emailKey = GlobalKey<FormState>();

  const FirstWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: 
        //SingleChildScrollView(
          //child:
           Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.indigoAccent[100], Colors.indigoAccent]),
            ),
            width: MediaQuery.of(context).size.width,
            child: Container(
              margin: EdgeInsets.only(top: 120),
              height: MediaQuery.of(context).size.height,
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                    // color: Colors.black,
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
                  Column(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        child: Text(
                          "Join Our Family!",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 40,
                              letterSpacing: 1),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Sign up using you'r preferred option.",
                          style: TextStyle(color: Colors.white54, fontSize: 17),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 110),
                        child: Align(
                          alignment: Alignment.bottomLeft,
                          child: SizedBox(
                            width: 200,
                            height: 110,
                            child: RaisedButton(
                              color: Colors.indigoAccent,
                              onPressed: () {
                                // if (!_emailKey.currentState.validate()) {
                                //   print("object");
                                // } else {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignInPage()));
                                // }
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
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5),
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
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignUpPage()));
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
                ],
              ),
            ),
          ),
     //   ),
      ),
    );
  }
}
