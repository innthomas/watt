import 'package:flutter/material.dart';

import 'package:watt/pages/dummyPage1.dart';
import 'package:watt/pages/dummyPage2.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'dummyPage4.dart';
import 'homepage/homeContainer.dart';

import 'pages/dummyPage3.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        primaryIconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int pageIndex = 0;

  final Page1 _page1 = Page1();
  final Page2 _page2 = Page2();
  final Page3 _page3 = Page3();
  final Page4 _page4 = Page4();

  Widget _showPage = HomeContainer();

  Widget pageChoser(int page) {
    switch (page) {
      case 0:
        return HomeContainer();
        break;
      case 1:
        return _page1;
        break;
      case 2:
        return _page2;
        break;
      case 3:
        return _page3;
        break;
      case 4:
        return _page4;
        break;
      default:
        return Container(
          child: Center(
            child: Text("no page found"),
          ),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Colors.greenAccent[100],
        ),
        elevation: 30.0,
      ),
      appBar: AppBar(
        brightness: Brightness.dark,
        bottomOpacity: 1.0,
        toolbarHeight: 100.0,
        toolbarOpacity: 1.0,
        shadowColor: Colors.tealAccent,
        elevation: 20.0,
        actionsIconTheme: IconThemeData(
          size: 40.0,
          color: Colors.black87,
        ),
        actions: <Widget>[
          SizedBox(width: 10.0),
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: null),
          SizedBox(width: 10.0),
          IconButton(
              icon: Icon(
                Icons.message,
                color: Colors.black,
              ),
              onPressed: null),
          SizedBox(width: 10.0),
          IconButton(
              icon: Icon(
                Icons.arrow_drop_down_circle_sharp,
                color: Colors.black,
                size: 40.0,
              ),
              onPressed: null),
          SizedBox(width: 10.0),
        ],
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
        title: Text(
          "watt",
          style: TextStyle(
              color: Colors.black, fontSize: 40.0, fontFamily: "Pacifico"),
        ),
      ),
      body: _showPage,
      bottomNavigationBar: CurvedNavigationBar(
        onTap: (int tappedIndex) {
          setState(() {
            _showPage = pageChoser(tappedIndex);
          });
        },
        index: pageIndex,
        color: Colors.tealAccent,
        animationCurve: Curves.easeOut,
        backgroundColor: Colors.orangeAccent[100],
        items: <Widget>[
          Icon(Icons.home_sharp, size: 30),
          Icon(Icons.list_sharp, size: 30),
          Icon(Icons.compare_arrows_sharp, size: 30),
          Icon(Icons.call_split_sharp, size: 30),
          Icon(Icons.perm_identity_sharp, size: 30),
        ],
      ),
    );
  }
}
