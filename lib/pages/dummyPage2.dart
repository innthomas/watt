import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orangeAccent[100],
      child: Center(
        child: Text(
          "Page2",
          style: TextStyle(fontSize: 40.0, fontFamily: "Pacifico"),
        ),
      ),
    );
  }
}
