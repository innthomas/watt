import 'package:flutter/material.dart';
import 'package:watt/categories/category.dart';
import 'package:watt/homepage/carousel.dart';
import 'package:watt/homepage/home_ad2.dart';

class HomeContainer extends StatefulWidget {
  @override
  _HomeContainerState createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
