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
            user(context),
            Container(
              height: screenAwareSize(350, context),
              width: screenAwareSize(300, context),
              decoration: BoxDecoration(
                color: Colors.white70,
                border: Border.all(
                  color: Colors.indigoAccent,
                  width: screenAwareSize(5, context),
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(
                      screenAwareSize(10, context),
                      screenAwareSize(10, context),
                    ),
                    blurRadius: screenAwareSize(10, context),
                  )
                ],
              ),
              padding: EdgeInsets.symmetric(
                  horizontal: screenAwareSize(30, context)),
              // color: Colors.indigo[100],
              child: Center(
                child: Text(
                  "Here will be information about you!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
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
          SliverFillRemaining(
            child: GestureDetector(
              onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
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

  Container user(BuildContext context) {
    return Container(
            padding: EdgeInsets.all(screenAwareSize(20, context)),
            
            child: ListTile(
              title: Text(
                "User Name",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                'example@gmail.com',
                style: TextStyle(
                    color: Colors.indigo[200],
                    fontSize: 20,
                    fontWeight: FontWeight.normal),
              ),
              leading: CircleAvatar(
                child: Icon(
                  Icons.perm_identity,
                  color: Colors.white,
                ),
              ),
            ),
          );
  }
}
