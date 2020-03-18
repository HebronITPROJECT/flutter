import 'package:flutter/material.dart';
import 'package:virtual_app/pages/home_page.dart';


class SideBarLayout extends StatelessWidget {
  const SideBarLayout({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          HomePage(),
        ],
      ),
    );
  }
}
