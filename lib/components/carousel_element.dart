import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselElement extends StatefulWidget {
  const CarouselElement({super.key});

  @override
  State<CarouselElement> createState() => _CarouselElementState();
}

class _CarouselElementState extends State<CarouselElement> {
  int _pageIndex = 0; // Add a variable to track the current page index
  List myList = [1, 2, 3, 4, 5];
  Color themeColour = Color.fromARGB(255, 34, 50, 99);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 344.67,
            onPageChanged: (index, reason) {
              setState(() {
                _pageIndex = index; // Update the current page index
              });
            },
          ),
          items: myList.map((i) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  // height: 344.67,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                        Colors.black38,
                        BlendMode.darken,
                      ),
                      image: AssetImage(
                        "assets/images/carousel_background.jpg",
                      ),
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("FOREVER 21",
                          style: TextStyle(fontSize: 29, color: Colors.white)),
                      const SizedBox(height: 17),
                      const Text("Big Fashion Festival",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 17),
                      const Text("70% - 80% Off",
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.w700)),
                      const SizedBox(height: 27),
                      Container(
                        width: 118,
                        height: 34,
                        decoration: BoxDecoration(
                          border: Border.all(width: 2, color: Colors.white),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(
                          child: Text("Explore",
                              style: TextStyle(fontSize: 18, color: Colors.white)),
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          }).toList(),
        ),
        Positioned(
          bottom: 20,
          left: 10,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselIndicator(
                count: myList.length,
                index: _pageIndex,
                activeColor: themeColour,
                space: 10.0,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
