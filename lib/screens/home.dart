import 'package:aibuddha_assignment/components/carousel_element.dart';
import 'package:aibuddha_assignment/components/category_element.dart';
import 'package:aibuddha_assignment/components/deal_element.dart';
import 'package:aibuddha_assignment/components/offer_element.dart';
import 'package:aibuddha_assignment/components/product.dart';
import 'package:aibuddha_assignment/data/products_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 35),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              decoration: const BoxDecoration(
                  // border: Border.all(),
                  ),
              child: const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: CircleAvatar(
                      radius: 17.5,
                      backgroundImage: AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                  Text(
                    "Anna Doe",
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 20),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 22),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 90,
              child: const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CategoryElement(
                      category: "Categories",
                      imagePath: 'assets/icons/menu.png',
                    ),
                    SizedBox(width: 22),
                    CategoryElement(
                      category: "Men",
                      imagePath: 'assets/images/men.jpg',
                    ),
                    SizedBox(width: 22),
                    CategoryElement(
                      category: "Women",
                      imagePath: 'assets/images/women.jpg',
                    ),
                    SizedBox(width: 22),
                    CategoryElement(
                      category: "Kids",
                      imagePath: 'assets/images/kids.jpg',
                    ),
                    SizedBox(width: 22),
                    CategoryElement(
                      category: "Western Wear",
                      imagePath: 'assets/images/western_wear.jpg',
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
            const CarouselElement(),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: 337,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Trending Offers",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        OfferElement(),
                        SizedBox(width: 12),
                        OfferElement(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              // width: MediaQuery.of(context).size.width,
              // margin: const EdgeInsets.fromLTRB(19, 0, 19, 0),
              width: MediaQuery.of(context).size.width * 0.9,
              height: 559,
              decoration: const BoxDecoration(
                  // border: Border.all(),
                  ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Deals Of  The Day",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
                  // SizedBox(height: 17),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DealElement(
                        imagePath: 'assets/images/deal image 1.jpg',
                      ),
                      DealElement(
                        imagePath: 'assets/images/deal image 2.jpg',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DealElement(
                        imagePath: 'assets/images/deal image 3.jpg',
                      ),
                      DealElement(
                        imagePath: 'assets/images/deal image 4.jpg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Row(
                children: [
                  Text(
                    "Our Collection",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                ],
              ),
            ),
            ...products.map((product) => Product(product: product)).toList(),
          ],
        ),
      ),
    );
  }
}
