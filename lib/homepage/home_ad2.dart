import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget imageCarouselSlider2 = Container(
  height: 300.0,
  width: 400.0,
  child: Carousel(
    showIndicator: false,
    dotSpacing: 10.0,
    images: [
      NetworkImage("https://picsum.photos/300/300"),
      NetworkImage("https://picsum.photos/id/1/300/300"),
      NetworkImage("http://lorempixel.com/300/300/"),
      NetworkImage("https://loremflickr.com/300/300"),
      NetworkImage("https://loremflickr.com/300/300/paris"),
      NetworkImage("https://loremflickr.com/300/300/dog"),
      NetworkImage("https://loremflickr.com/300/300/all"),
      NetworkImage("https://loremflickr.com/300/300/paris,girl"),
      NetworkImage("https://loremflickr.com/300/300/"),
    ],
    animationCurve: Curves.bounceIn,
    boxFit: BoxFit.fitHeight,
    radius: Radius.circular(3.0),
    overlayShadow: true,
    overlayShadowColors: Color(8),
  ),
);
