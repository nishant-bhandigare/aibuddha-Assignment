import 'package:aibuddha_assignment/components/deal_element.dart';
import 'package:aibuddha_assignment/data/deals_data.dart';
import 'package:flutter/material.dart';

class DealsCard extends StatelessWidget {
  const DealsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.9,
      height: 559,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Deals Of  The Day",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DealElement(
                dealItem: deals[0],
              ),
              DealElement(
                dealItem: deals[1],
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DealElement(
                dealItem: deals[2],
              ),
              DealElement(
                dealItem: deals[3],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
