import 'package:flutter/material.dart';

class ColorPalette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Widget> colours = [
      const CircleAvatar(
        radius: 21,
        backgroundColor: Colors.white70,
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Color.fromARGB(255, 207, 181, 1),
        ),
      ),
      const SizedBox(width: 17),
      const CircleAvatar(
        radius: 21,
        backgroundColor: Colors.white70,
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Color.fromARGB(150, 249, 255, 1),
        ),
      ),
      const SizedBox(width: 17),
      const CircleAvatar(
        radius: 21,
        backgroundColor: Colors.white70,
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Color.fromARGB(255, 207, 181, 1),
        ),
      ),
      const SizedBox(width: 17),
      const CircleAvatar(
        radius: 21,
        backgroundColor: Colors.white70,
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Color.fromARGB(150, 249, 255, 1),
        ),
      ),
      const SizedBox(width: 17),
      const CircleAvatar(
        radius: 21,
        backgroundColor: Colors.white70,
        child: CircleAvatar(
          radius: 14,
          backgroundColor: Color.fromARGB(255, 207, 181, 1),
        ),
      ),
    ];

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Colour',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
          const Text('White',
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          const SizedBox(height: 7),
          Row(
            children: [
              ...colours,
            ],
          ),
        ],
      ),
    );
  }
}
