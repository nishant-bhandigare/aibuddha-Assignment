import 'package:aibuddha_assignment/components/category_element.dart';
import 'package:flutter/material.dart';

class CategoriesHeader extends StatelessWidget{
  const CategoriesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 90,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 20),
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
            SizedBox(width: 22),
          ],
        ),
      ),
    );
  }

}