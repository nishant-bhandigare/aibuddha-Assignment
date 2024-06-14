import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselElement extends StatelessWidget {
  const CarouselElement({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(height: 344.67),
      items: [1,2,3,4,5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              // height: 344.67,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/carousel_background.jpg",),
                  fit: BoxFit.fitHeight,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("FOREVER 21", style: TextStyle(fontSize: 29, color: Colors.white)),
                  const SizedBox(height: 17),
                  const Text("Big Fashion Festival", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 17),
                  const Text("70% - 80% Off", style: TextStyle(fontSize: 24, color: Colors.white, fontWeight: FontWeight.w700)),
                  const SizedBox(height: 27),
                  Container(
                    width: 118,
                    height: 34,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2, color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(
                      child: Text("Explore", style: TextStyle(fontSize: 18, color: Colors.white)),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
