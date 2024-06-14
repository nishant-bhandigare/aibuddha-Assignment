import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product extends StatelessWidget {
  const Product(
      {super.key,
      required this.imagePath1,
      required this.imagePath2,
      required this.imagePath3});

  final String imagePath1;
  final String imagePath2;
  final String imagePath3;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: BoxDecoration(
        // border: Border.all(),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.54,
                height: 216,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.cyanAccent,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    imagePath1,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyanAccent,
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagePath2,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.33,
                    height: 103,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.cyanAccent,
                      image: DecorationImage(
                        image: AssetImage(imagePath3),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "+ 2",
                        style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Text("Womens White Shirt",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
          const SizedBox(height: 5),
          const Text("Brand Name",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
          const SizedBox(height: 7),
          const Row(
            children: [
              Text("Rs. 999",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    decoration: TextDecoration.lineThrough,
                  )),
              SizedBox(width: 17),
              Text("Rs. 799",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
              SizedBox(width: 10),
              Text("(20% Off)",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.green)),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Wishlist",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                    SizedBox(width: 22),
                    FaIcon(FontAwesomeIcons.heart, size: 14),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.43,
                height: 38,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue, width: 1),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Add to Cart",
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.w400)),
                    SizedBox(width: 22),
                    FaIcon(FontAwesomeIcons.bagShopping, size: 14),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
