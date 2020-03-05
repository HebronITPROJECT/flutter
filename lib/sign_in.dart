import 'package:flutter/material.dart';
import 'package:virtual_app/layouts/shared_widgets/buttons/sign_in_button.dart';
import 'package:virtual_app/layouts/side_bar/side_bar_layout.dart';
import 'package:virtual_app/pages/home_page.dart';
import 'package:virtual_app/sign_up.dart';
import 'package:virtual_app/utils/screen_aware_size.dart';
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
                    Spacer(),
                    Container(
                      margin: EdgeInsets.only(
                          left: screenAwareSize(10, context)),
                      alignment: Alignment.bottomLeft,
                      child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Icon(Icons.arrow_back,
                            color: Colors.white,
                            size: screenAwareSize(40, context)),
                      ),
                    ),
                    Spacer(),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: screenAwareSize(40, context),
                      ),
                      child: Column(
                        children: <Widget>[
                          Container(
                            alignment: FractionalOffset(0.0, 0.0),
                            child: Text(
                              "Hello",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: screenAwareSize(50, context)),
                            ),
                          ),
                          SizedBox(
                            height: screenAwareSize(10, context),
                          ),
                          Container(
                            alignment: FractionalOffset(0.0, 0.0),
                            child: Text(
                              "Sing in to you'r Account",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.normal,
                                fontSize: screenAwareSize(15, context),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Container(
                        margin: EdgeInsets.only(
                            left: screenAwareSize(40, context),
                            right: screenAwareSize(40, context),
                            top: screenAwareSize(40, context),
                            bottom: screenAwareSize(20, context)),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.indigoAccent),
                        padding: EdgeInsets.symmetric(horizontal: screenAwareSize(20, context)),
                        height: screenAwareSize(150, context),
                        child: Column(
                          children: <Widget>[
                            EmailField(),
                            Container(
                                height: screenAwareSize(1, context),
                                color: Colors.white),
                            inputField("PASSWORD", Icons.lock),
                            Container(
                              height: screenAwareSize(1, context),
                              color: Colors.white,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: screenAwareSize(40, context)),
                      alignment: FractionalOffset(0.0, 0.0),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                            fontSize:screenAwareSize(15, context)),
                      ),
                    ),
                    signInButton(context,Colors.white,Colors.indigoAccent,HomePage(),""),
                    Container(
                      height: 50,
                      margin: EdgeInsets.only(bottom: 20, top: 60),
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: FlatButton(
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



  TextFormField inputField(text, icon) {
    return TextFormField(
      obscureText: true,
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal),
      decoration: InputDecoration(
        icon: Icon(icon, size: 25, color: Colors.white),
        labelText: text,
        labelStyle: TextStyle(color: Colors.white),
        border: InputBorder.none,
        errorStyle: TextStyle(color: Colors.red[600]),
      ),
    );
  }
}
