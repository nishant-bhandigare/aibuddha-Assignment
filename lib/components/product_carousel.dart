import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ProductCarousel extends StatefulWidget{
  const ProductCarousel({super.key, required this.imagePaths});

  final List<String> imagePaths;

  @override
  State<ProductCarousel> createState() => _ProductCarouselState();
}

class _ProductCarouselState extends State<ProductCarousel> {

  int _pageIndex = 0;
  Color themeColour = const Color.fromARGB(255, 34, 50, 99);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            options: CarouselOptions(
              aspectRatio: 16/9,
              // height: (9.0 / 16.0) * MediaQuery.of(context).size.width,
              height: 570,
              viewportFraction: 1.0,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: false,
              scrollDirection: Axis.horizontal,
              onPageChanged: (index, reason) {
                setState(() {
                  _pageIndex = index;
                });
              },
            ),
            items: widget.imagePaths.map((imagePath) {
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
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CarouselIndicator(
              count: widget.imagePaths.length,
              index: _pageIndex,
              height: 6,
              width: 6,
              cornerRadius: 20,
              activeColor: themeColour,
              space: 8.0,
              color: Colors.grey,
            ),
          ],
        ),
      ],
    );
  }
}