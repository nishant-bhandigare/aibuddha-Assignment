import 'package:aibuddha_assignment/components/category_element.dart';
import 'package:flutter/material.dart';

class CategoriesHeader extends StatelessWidget{
  const CategoriesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: MediaQuery.of(context).size.width,
      height: 90,
      child: const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            CategoryElement(
              category: "Categories",
              imagePath: 'assets/icons/menu.png',
            ),
            SizedBox(width: 22),
            CategoryElement(
              category: "Men",
              imagePath: 'assets/images/men.jpg',
            ),
            SizedBox(width: 22),
            CategoryElement(
              category: "Women",
              imagePath: 'assets/images/women.jpg',
            ),
            SizedBox(width: 22),
            CategoryElement(
              category: "Kids",
              imagePath: 'assets/images/kids.jpg',
            ),
            SizedBox(width: 22),
            CategoryElement(
              category: "Western Wear",
              imagePath: 'assets/images/western_wear.jpg',
            ),
          ],
        ),
      ),
    );
  }

}