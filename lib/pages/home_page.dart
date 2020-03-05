import 'package:flutter/material.dart';
import 'package:virtual_app/utils/screen_aware_size.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white70,
      // ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Title"),
            backgroundColor: Colors.brown[900],
            expandedHeight: screenAwareSize(190, context),
            floating: false,
            pinned: true,
            flexibleSpace:FlexibleSpaceBar(
              background: Image.asset("assets/images/image.jpg",width: MediaQuery.of(context).size.width,),
            ) ,
          ),
          SliverFillRemaining(
            child: Center(
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    
                  ),
                ],
              )
            )
          )
        ],
      ),
    );
  }
}
