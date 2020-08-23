import 'package:flutter/material.dart';
import 'category_card.dart';
import '../homepage/home.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Hero(
            tag: "foodie",
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: CategoryCard(
                Icon(
                  Icons.food_bank_sharp,
                  size: 60.0,
                ),
                "foodie",
              ),
            ),
          ),
          CategoryCard(
            Icon(
              Icons.book_sharp,
              size: 60.0,
            ),
            "books",
          ),
          CategoryCard(
            Icon(
              Icons.toys_sharp,
              size: 60.0,
            ),
            "X-toys",
          ),
          CategoryCard(
            Icon(
              Icons.tv_sharp,
              size: 60.0,
            ),
            "TV",
          ),
          CategoryCard(
            Icon(
              Icons.laptop_sharp,
              size: 60.0,
            ),
            "laptops",
          ),
          CategoryCard(
            Icon(
              Icons.movie_sharp,
              size: 60.0,
            ),
            "movies",
          ),
          CategoryCard(
            Icon(
              Icons.phone_iphone_sharp,
              size: 60.0,
            ),
            "phones",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
          CategoryCard(
            Icon(
              Icons.food_bank_outlined,
              size: 60.0,
            ),
            "foodie",
          ),
        ],
      ),
    );
  }
}
