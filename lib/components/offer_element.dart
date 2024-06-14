import 'package:flutter/material.dart';

class OfferElement extends StatelessWidget {
  const OfferElement({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 216,
      height: 294,
      child: Column(
        children: [
          Container(
            width: 216,
            height: 227,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10.0),
                topRight: Radius.circular(10.0),
              ),
              child: Image.asset(
                "assets/images/offer_image.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 7),
          Container(
            width: 35,
            height: 23,
            color: Colors.cyanAccent,
          ),
          const SizedBox(height: 7),
          const Text("Min 30% Off", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
