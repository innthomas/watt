import 'package:flutter/material.dart';
import 'package:watt/homepage/home_ad.dart';
import 'categories/category.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'homepage/home_ad2.dart';

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
  PageController pageController = PageController(initialPage: 0);
  int pageChanged = 0;
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
      body: PageView(
        onPageChanged: (index) {
          setState(
            () {
              pageChanged = index;
            },
          );
        },
        controller: pageController,
        children: [
          Container(
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
                          fontFamily: "Pacifico"),
                    ),
                  ),
                ),
                Category(),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      "features",
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Pacifico"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: imageCarouselSlider,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: imageCarouselSlider2,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: imageCarouselSlider,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: imageCarouselSlider2,
                ),
              ],
            ),
          ),
          Container(
            color: Colors.orangeAccent[100],
            child: Center(child: Text("Page 1")),
          ),
          Container(
            color: Colors.orangeAccent[100],
            child: Center(child: Text("Page 2")),
          ),
          Container(
            color: Colors.orangeAccent[100],
            child: Center(child: Text("Page 3")),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        index: 0,
        color: Colors.tealAccent,
        animationCurve: Curves.easeOut,
        backgroundColor: Colors.orangeAccent[100],
        items: <Widget>[
          IconButton(
            onPressed: () {
              pageController.animateToPage(0,
                  duration: Duration(microseconds: 250),
                  curve: Curves.bounceInOut);
            },
            icon: Icon(
              Icons.home_sharp,
            ),
          ),
          IconButton(
            onPressed: () {
              pageController.animateToPage(1,
                  duration: Duration(microseconds: 250),
                  curve: Curves.bounceInOut);
            },
            icon: Icon(
              Icons.account_box_sharp,
            ),
          ),
          IconButton(
            onPressed: () {
              pageController.animateToPage(2,
                  duration: Duration(microseconds: 250),
                  curve: Curves.bounceInOut);
            },
            icon: Icon(
              Icons.shopping_cart_sharp,
            ),
          ),
          IconButton(
            onPressed: () {
              pageController.animateToPage(2,
                  duration: Duration(microseconds: 250),
                  curve: Curves.bounceInOut);
            },
            icon: Icon(
              Icons.card_giftcard_sharp,
            ),
          ),
        ],
      ),
    );
  }
}
