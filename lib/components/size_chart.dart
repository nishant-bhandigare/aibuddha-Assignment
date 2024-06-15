import 'package:flutter/material.dart';

class SizeChart extends StatefulWidget {
  const SizeChart({super.key, required this.sizes});

  final List<String> sizes;

  @override
  State<SizeChart> createState() => _SizeChartState();
}

class _SizeChartState extends State<SizeChart> {
  String? _selectedSize;

  Widget _buildSizeBox(String size) {
    bool isSelected = _selectedSize == size;
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedSize = size;
        });
      },
      child: Container(
        width: 42,
        height: 42,
        margin: const EdgeInsets.fromLTRB(0, 7, 17, 15),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: isSelected ? Colors.black38 : Colors.transparent,
            width: isSelected ? 1 : 0,
          ),
          boxShadow: const [
            BoxShadow(
              color: Colors.black12,
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Text(
            size,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Select Size",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
              Text("Size Chart",
                  style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
            ],
          ),
          Row(
            children: widget.sizes.map((size) => _buildSizeBox(size)).toList(),
          ),
        ],
      ),
    );
  }
}
