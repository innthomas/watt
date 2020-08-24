import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget imageCarouselSlider = Container(
  height: 300.0,
  width: 400.0,
  child: Carousel(
    showIndicator: false,
    dotSpacing: 10.0,
    images: [
      AssetImage("assets/eba.png"),
      AssetImage("assets/chicken.jpg"),
      AssetImage("assets/c4.jpeg"),
      AssetImage("assets/c5.png"),
      AssetImage("assets/calabar-food.webp"),
      AssetImage("assets/coolfoodie.png"),
      AssetImage("assets/e3.jpg"),
      AssetImage("assets/er.gif"),
      AssetImage("assets/f4.jpg"),
      AssetImage("assets/f9.gif"),
      AssetImage("assets/f45.gif"),
      AssetImage("assets/food2.png"),
      AssetImage("assets/food4.jpeg"),
      AssetImage("assets/p1.png"),
      AssetImage("assets/p2.png"),
      AssetImage("assets/pizza.png"),
    ],
    animationCurve: Curves.bounceIn,
    boxFit: BoxFit.fitHeight,
    radius: Radius.circular(3.0),
    overlayShadow: true,
    overlayShadowColors: Color(8),
  ),
);
