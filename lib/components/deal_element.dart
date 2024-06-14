import 'package:aibuddha_assignment/models/deal_model.dart';
import 'package:flutter/material.dart';

class DealElement extends StatelessWidget {
  const DealElement({super.key, required this.dealItem,});

  final Deal dealItem;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width*0.43,
      height: 251,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: double.infinity,
            height: 194,
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
                dealItem.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // const SizedBox(height: 4),
          Text(dealItem.title, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400)),
          // const SizedBox(height: 3),
          Text("Under Rs. ${dealItem.amount}", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
