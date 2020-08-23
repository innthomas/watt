import 'package:flutter/material.dart';
import 'categories/category.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

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
        toolbarHeight: 150.0,
        toolbarOpacity: 1.0,
        shadowColor: Colors.tealAccent,
        elevation: 20.0,
        actionsIconTheme: IconThemeData(
          size: 40.0,
          color: Colors.black87,
        ),
        actions: <Widget>[
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
            color: Colors.black,
            fontSize: 40.0,
          ),
        ),
      ),
      body: Container(
        color: Colors.orangeAccent[100],
        child: ListView(
          children: <Widget>[
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "categories",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Category(),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "products",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black87,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.tealAccent,
        animationCurve: Curves.easeOut,
        backgroundColor: Colors.orangeAccent[100],
        items: <Widget>[
          Icon(
            Icons.home_sharp,
          ),
          Icon(
            Icons.account_box_sharp,
          ),
          Icon(
            Icons.shopping_cart_sharp,
          ),
          Icon(
            Icons.card_giftcard_sharp,
          ),
        ],
      ),
    );
  }
}
