import 'package:flutter/material.dart';

class MySliverGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        maxCrossAxisExtent: 200.0,
      ),
      delegate: SliverChildBuilderDelegate((BuildContext context, int index) {
        return new Container(
          alignment: Alignment.center,
          color: _randomColor(index),
          height: 400.0,
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.food_bank_rounded,
                size: 50.0,
              ),
              Text(
                "item ${index + 1}",
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        );
      }, childCount: 20),
    );
  }
}

Color _randomColor(int index) {
  if (index % 3 == 0) {
    return Colors.redAccent[100];
  } else if (index % 3 == 1) {
    return Colors.blueAccent[100];
  }

  return Colors.yellowAccent[100];
}
