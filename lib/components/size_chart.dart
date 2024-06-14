import 'package:flutter/material.dart';

class SizeChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> sizeList = ["XS", "S", "M", "L", "XL"];

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
            children: [
              ...sizeList.map((item) {
                return Container(
                  width: 42,
                  height: 42,
                  margin: EdgeInsets.fromLTRB(0, 7, 17, 15),
                  decoration: BoxDecoration(
                    // border: Border.all(),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12, // Shadow color
                        spreadRadius: 2, // Spread radius
                        blurRadius: 7, // Blur radius
                        offset: Offset(0, 3), // Offset in the x and y direction
                      ),
                    ],
                  ),
                  child: Center(
                    child: Text(
                      item,
                      style:
                          const TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                    ),
                  ),
                );
              }).toList()
            ],
          ),
        ],
      ),
    );
  }
}
