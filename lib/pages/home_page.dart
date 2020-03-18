import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:virtual_app/utils/screen_aware_size.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

int _currentIndex = 0;

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Center(
        child: Column(
          children: <Widget>[
            Container(
              height: screenAwareSize(100, context),
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(
                  horizontal: screenAwareSize(30, context)),
              color: Colors.indigo[100],
              child: Text(
                "Home",
                style: TextStyle(
                  color: Colors.indigoAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
      Container(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                "Info Page",
                style: TextStyle(
                    color: Colors.indigoAccent, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
      Center(
        child: Text(
          "cs2323csddcsdcsc",
          style: TextStyle(
              color: Colors.indigoAccent, fontWeight: FontWeight.bold),
        ),
      ),
      Center(child: Text("cscsddcs2323dcsc")),
    ];
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          //     SliverAppBar(
          //       leading: Container(),
          //       title: Text("Title"),
          //       centerTitle: true,
          //       backgroundColor: Colors.brown[900],
          //       expandedHeight: screenAwareSize(190, context),
          //       floating: true,
          //       flexibleSpace: FlexibleSpaceBar(
          //         background: Image.asset(
          //           "assets/images/image.jpg",
          //           fit: BoxFit.cover,
          //         ),
          //       ),
          //     ),
          SliverFillRemaining(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  tabs[_currentIndex],
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.receipt),
            title: Text("Info"),
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.new_releases),
            title: Text("Important"),
            backgroundColor: Colors.indigoAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text("Profile"),
            backgroundColor: Colors.indigoAccent,
          )
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
