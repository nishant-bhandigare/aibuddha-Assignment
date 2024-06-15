import 'package:aibuddha_assignment/components/home_carousel.dart';
import 'package:aibuddha_assignment/components/categories_header.dart';
import 'package:aibuddha_assignment/components/deals_card.dart';
import 'package:aibuddha_assignment/components/our_collections_card.dart';
import 'package:aibuddha_assignment/components/profile_header.dart';
import 'package:aibuddha_assignment/components/trending_offers_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 40),
            ProfileHeader(name: "Anne Doe", imagePath: "assets/images/profile.jpg"),
            SizedBox(height: 22),
            CategoriesHeader(),
            SizedBox(height: 30),
            HomeCarousel(),
            SizedBox(height: 30),
            TrendingOffersCard(),
            SizedBox(height: 30),
            DealsCard(),
            SizedBox(height: 30),
            OurCollectionsCard(),
          ],
        ),
      ),
    );
  }
}
