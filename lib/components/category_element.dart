import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoryElement extends StatelessWidget {
  const CategoryElement(
      {Key? key, required this.category, required this.imagePath})
      : super(key: key);

  final String category;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        category == "Categories"
            ? Container(
                width: 62,
                height: 62,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(255, 226, 234, 255),
                ),
                child: const Center(
                  child: Icon(
                    Icons.grid_view_rounded,
                    size: 30,
                  ),
                ),
              )
            : CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 31,
              ),
        Text(
          category,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ],
    );
  }
}
