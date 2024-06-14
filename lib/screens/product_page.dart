import 'package:aibuddha_assignment/components/color_palette.dart';
import 'package:aibuddha_assignment/components/faq.dart';
import 'package:aibuddha_assignment/components/pincode_input.dart';
import 'package:aibuddha_assignment/components/product.dart';
import 'package:aibuddha_assignment/components/product_offers.dart';
import 'package:aibuddha_assignment/components/size_chart.dart';
import 'package:aibuddha_assignment/data/products_data.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:aibuddha_assignment/models/product_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.product});

  final ProductItem product;

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  int _pageIndex = 0; // Add a variable to track the current page index

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.search),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.heart),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: FaIcon(FontAwesomeIcons.bagShopping),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: 414,
              height: 570,
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 570,
                  viewportFraction: 1.0,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  // autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _pageIndex = index; // Update the current page index
                    });
                  },
                ),
                items: widget.product.imagePaths.map((imagePath) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: 414,
                        height: 570,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(imagePath),
                            fit: BoxFit.cover,
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CarouselIndicator(
                  count: widget.product.imagePaths.length,
                  index: _pageIndex,
                  activeColor: Colors.blue,
                  space: 10.0,
                  color: Colors.grey,
                ),
              ],
            ),
            const SizedBox(height: 15),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(widget.product.productName,
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
                    Text(widget.product.brandName,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w400)),
                  ],
                )),
            const SizedBox(height: 7),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Text('Rs. ${widget.product.oldPrice.toString()}',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w400,
                        decoration: TextDecoration.lineThrough,
                      )),
                  const SizedBox(width: 17),
                  Text('Rs. ${widget.product.newPrice.toString()}',
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.w400)),
                  const SizedBox(width: 10),
                  Text('(${widget.product.discount.toString()}% Off)',
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
            ColorPalette(),
            const SizedBox(height: 15),
            SizeChart(),
            ProductOffers(),
            PincodeInput(),
            const SizedBox(height: 30),
            FAQSection(),
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
