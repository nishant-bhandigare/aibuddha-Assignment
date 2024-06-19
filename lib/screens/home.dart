import 'package:aibuddha_assignment/components/home_carousel.dart';
import 'package:aibuddha_assignment/components/categories_header.dart';
import 'package:aibuddha_assignment/components/deals_card.dart';
import 'package:aibuddha_assignment/components/our_collections_card.dart';
import 'package:aibuddha_assignment/components/profile_header.dart';
import 'package:aibuddha_assignment/components/trending_offers_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:aibuddha_assignment/controllers/auth_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthController authController = Get.find<AuthController>();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Obx(() {
              return ProfileHeader(
                name: authController.userName.value,
                imagePath: "assets/images/profile.jpg",
              );
            }),
            const SizedBox(height: 22),
            const CategoriesHeader(),
            const SizedBox(height: 30),
            const HomeCarousel(),
            const SizedBox(height: 30),
            const TrendingOffersCard(),
            const SizedBox(height: 30),
            const DealsCard(),
            const SizedBox(height: 30),
            const OurCollectionsCard(),
          ],
        ),
      ),
    );
  }
}
