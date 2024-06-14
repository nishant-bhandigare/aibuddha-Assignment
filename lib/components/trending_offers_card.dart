import 'package:aibuddha_assignment/components/offer_element.dart';
import 'package:aibuddha_assignment/data/offers_data.dart';
import 'package:flutter/material.dart';

class TrendingOffersCard extends StatelessWidget{
  const TrendingOffersCard({super.key});


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
      width: MediaQuery.of(context).size.width,
      height: 337,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Trending Offers",
              style:
              TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ...offers.map((item) => OfferElement(offerItem: item,)),
              ],
            ),
          ),
        ],
      ),
    );
  }

}