import 'package:aibuddha_assignment/components/product.dart';
import 'package:aibuddha_assignment/data/products_data.dart';
import 'package:flutter/material.dart';

class OurCollectionsCard extends StatelessWidget{
  const OurCollectionsCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Our Collection",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        ...products.map((product) => Product(product: product)),
      ],
    );
  }

}