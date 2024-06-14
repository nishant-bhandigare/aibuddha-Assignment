import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryElement extends StatelessWidget {
  const CategoryElement({Key? key, required this.category, required this.imagePath}) : super(key: key);

  final String category;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          key: UniqueKey(), // Added key parameter
          radius: 31,
          // backgroundColor: category == "Categories" ? Colors.blue : null,
          child: category == "Categories"
              ? Icon(Icons.grid_view_rounded, size: 30)
              : CircleAvatar(
            backgroundImage: AssetImage(imagePath),
            radius: 30,
          ),
        ),
        Text(
          category,
          style: TextStyle(fontSize: 14),
        ),
      ],
    );
  }
}
