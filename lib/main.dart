import 'package:flutter/material.dart';
import 'package:virtual_app/layouts/shared_widgets/buttons/logo/hebron_logo.dart';
import 'package:virtual_app/layouts/shared_widgets/buttons/sign_in_buttom_prew.dart';
import 'package:virtual_app/layouts/shared_widgets/buttons/sign_up_button.dart';

import 'package:virtual_app/sign_in.dart';

import 'package:virtual_app/sign_up.dart';
import 'package:virtual_app/utils/screen_aware_size.dart';

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
      debugShowCheckedModeBanner: false,
      home: FirstWidget(),
    );
  }
}

class FirstWidget extends StatelessWidget {
  const FirstWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.indigoAccent[100], Colors.indigoAccent]),
          ),
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // SizedBox(
              //   height: screenAwareSize(100, context),
              // ),
              Spacer(),
              Logo(),
              Spacer(),
              LableText(),
              Spacer(),
              signInButtonPrew(
                  context, Colors.indigoAccent, Colors.white, SignInPage()),
              signUpButton(context, SignUpPage()),
            ],
          ),
        ),
      ),
    );
  }
}

class LableText extends StatelessWidget {
  const LableText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "Join Our Family!",
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: screenAwareSize(40, context),
                letterSpacing: screenAwareSize(1, context)),
          ),
        ),
        Container(
          child: Text(
            "Sign up using you'r preferred option.",
            style: TextStyle(
                color: Colors.white54, fontSize: screenAwareSize(17, context)),
          ),
        ),
      ],
    );
  }
}
