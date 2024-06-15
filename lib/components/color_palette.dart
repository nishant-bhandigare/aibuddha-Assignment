import 'package:flutter/material.dart';

class ColorPalette extends StatefulWidget {
  const ColorPalette({super.key, required this.colours});

  final List<Color> colours;

  @override
  State<ColorPalette> createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> {
  Color? _selectedColor;

  Widget _buildColorCircle(Color color) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedColor = color;
        });
      },
      child: Container(
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 1,
              blurRadius: 7,
              // offset: Offset(0, 3),
            ),
          ],
        ),
        child: CircleAvatar(
          radius: 22,
          backgroundColor: _selectedColor == color ? Colors.black38 : Colors.transparent,
          child: CircleAvatar(
            radius: 21,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 14,
              backgroundColor: color,
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> colorWidgets = [];
    for (var color in widget.colours) {
      colorWidgets.add(_buildColorCircle(color));
      colorWidgets.add(const SizedBox(width: 17));
    }
    // Remove the last SizedBox to avoid unnecessary spacing
    if (colorWidgets.isNotEmpty) {
      colorWidgets.removeLast();
    }

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
            children: colorWidgets,
          ),
        ],
      ),
    );
  }
}
