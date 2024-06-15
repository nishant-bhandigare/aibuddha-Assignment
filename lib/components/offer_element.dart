import 'package:aibuddha_assignment/models/offer_model.dart';
import 'package:flutter/material.dart';

class OfferElement extends StatelessWidget {
  const OfferElement({super.key, required this.offerItem});

  final Offer offerItem;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.52,
      height: 294,
      margin: const EdgeInsets.fromLTRB(0, 0, 12, 0),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.52,
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
                offerItem.imagePath,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 7),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.085,
            height: 23,
            child: Image.asset(offerItem.brandLogo),
          ),
          const SizedBox(height: 7),
          Text(
            "Min ${offerItem.discount.toString()}% Off",
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
