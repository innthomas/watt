import 'package:flutter/material.dart';
import './homepage/carousel.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          //shadowColor: Colors.blueAccent,
          stretch: true,
          floating: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            // title: Text("market"),
            centerTitle: true,
            background: Image.asset(
              "assets/market.png",
              fit: BoxFit.cover,
            ),
          ),

          actions: <Widget>[
            IconButton(
                icon: Icon(
                  Icons.search,
                  color: Colors.white70,
                ),
                onPressed: null),
            SizedBox(
              width: 20.0,
            ),
            IconButton(
                icon: Icon(
                  Icons.message,
                  color: Colors.white70,
                ),
                onPressed: null),
            SizedBox(
              width: 20.0,
            ),
            IconButton(
                icon: Icon(
                  Icons.arrow_drop_down_circle,
                  color: Colors.white70,
                ),
                onPressed: null),
            SizedBox(
              width: 20.0,
            )
          ],
          elevation: 39.0,
          backgroundColor: Colors.brown[900],
          brightness: Brightness.light,
          centerTitle: false,
          title: Text(
            "watt",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 20.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: Container(
            child: Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "categories",
                    style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            height: 200,
            color: Colors.yellowAccent,
          ),
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
      ],
    );
  }
}
