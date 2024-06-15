import 'package:flutter/material.dart';

class ProductOffers extends StatelessWidget{
  const ProductOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Best Offers",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        SizedBox(height: 20),
          Wrap(
            children: [
              Text("Special offer get 25% off",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(width: 10),
              Text("T&C",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue)),
            ],
          ),
          Wrap(
            children: [
              Text("Bank offer get 30% off on Axis Bank Credit card",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(width: 10),
              Text("T&C",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue)),
            ],
          ),
          Wrap(
            children: [
              Text("Special offer get 25% off",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
              SizedBox(width: 10),
              Text("T&C",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.blue)),
            ],
          ),
        ],
      ),
    );
  }

}