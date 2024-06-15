import 'package:aibuddha_assignment/components/offer_element.dart';
import 'package:aibuddha_assignment/data/offers_data.dart';
import 'package:flutter/material.dart';

class TrendingOffersCard extends StatelessWidget{
  const TrendingOffersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 337,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text("Trending Offers",
                style:
                TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                const SizedBox(width: 20),
                ...offers.map((item) => OfferElement(offerItem: item,)),
              ],
            ),
          ),
        ],
      ),
    );
  }

}