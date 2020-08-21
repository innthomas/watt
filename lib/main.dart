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
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
            title: Text("foodie"),
          ),
          pinned: true,
          leading: Drawer(
            elevation: 20.0,
            semanticLabel: "list",
            child: IconButton(
                icon: Icon(
                  Icons.toys,
                  color: Colors.brown,
                ),
                onPressed: null),
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
          centerTitle: true,
          title: Text(
            "watt",
            style: TextStyle(
                fontStyle: FontStyle.italic,
                fontSize: 40.0,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
        SliverToBoxAdapter(
          child: imageCarouselSlider,
        ),
        SliverToBoxAdapter(
          child: Container(
            height: 200,
            color: Colors.yellowAccent,
          ),
        ),
      ],
    );
  }
}
