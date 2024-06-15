import 'package:aibuddha_assignment/components/color_palette.dart';
import 'package:aibuddha_assignment/components/faq.dart';
import 'package:aibuddha_assignment/components/pincode_input.dart';
import 'package:aibuddha_assignment/components/product.dart';
import 'package:aibuddha_assignment/components/product_carousel.dart';
import 'package:aibuddha_assignment/components/product_offers.dart';
import 'package:aibuddha_assignment/components/size_chart.dart';
import 'package:aibuddha_assignment/data/products_data.dart';
import 'package:flutter/material.dart';
import 'package:aibuddha_assignment/models/product_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key, required this.product});

  final ProductItem product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FaIcon(FontAwesomeIcons.magnifyingGlass, size: 24),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FaIcon(FontAwesomeIcons.heart, size: 24),
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
            child: FaIcon(FontAwesomeIcons.bagShopping, size: 24),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Filters"),
                  SizedBox(width: 5),
                  FaIcon(FontAwesomeIcons.filter, size: 15),
                  SizedBox(width: 15),
                  Text("Sort By"),
                  SizedBox(width: 5),
                  FaIcon(FontAwesomeIcons.chevronDown, size: 15),
                ],
              ),
            ),
            ProductCarousel(imagePaths: product.imagePaths),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(product.productName,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.w500)),
                  const FaIcon(FontAwesomeIcons.shareNodes),
                ],
              ),
            ),
            const SizedBox(height: 5),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(product.brandName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                  ],
                )),
            const SizedBox(height: 7),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('Rs. ${product.oldPrice.toString()}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                      )),
                  const SizedBox(width: 17),
                  Text('Rs. ${product.newPrice.toString()}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  const SizedBox(width: 10),
                  Text('(${product.discount.toString()}% Off)',
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.green)),
                  const Spacer(),
                  const Icon(Icons.access_time, color: Colors.red, size: 12),
                  const SizedBox(width: 5),
                  const Text('13 hours left',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Colors.red)),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ColorPalette(colours: product.colours),
            const SizedBox(height: 15),
            SizeChart(sizes: product.sizes),
            ProductOffers(),
            const PincodeInput(),
            const SizedBox(height: 30),
            const FAQSection(),
            const SizedBox(height: 30),
            Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: const Row(
                children: [
                  Text(
                    "Similar Products",
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
