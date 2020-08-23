import 'package:flutter/material.dart';
import 'carousel.dart';
import 'gridview.dart';

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
          leading: IconButton(
            iconSize: 39.0,
            icon: Icon(Icons.close_sharp), //implement divider
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          //shadowColor: Colors.blueAccent,
          stretch: true,
          floating: true,
          expandedHeight: 250.0,
          flexibleSpace: FlexibleSpaceBar(
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
            "food",
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
        MySliverGrid(),
      ],
    );
  }
}
