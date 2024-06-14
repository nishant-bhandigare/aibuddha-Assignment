import 'package:aibuddha_assignment/models/product_model.dart';
import 'package:aibuddha_assignment/screens/product_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Product extends StatelessWidget {
  const Product({super.key, required this.product});

  final ProductItem product;

  @override
  Widget build(BuildContext context) {

    const Color themeColour = Color.fromARGB(255, 34, 50, 99);

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductPage(
              product: product,
            ),
          ),
        );
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 15),
        width: MediaQuery.of(context).size.width * 0.9,
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
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      product.imagePaths[0],
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
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          product.imagePaths[1],
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
                        image: DecorationImage(
                          colorFilter: const ColorFilter.mode(
                            Colors.black38,
                            BlendMode.darken,
                          ),
                          image: AssetImage(product.imagePaths[2]),
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
            Text(product.productName,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
            const SizedBox(height: 5),
            Text(product.brandName,
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w400)),
            const SizedBox(height: 7),
            Row(
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
                    border: Border.all(color: themeColour, width: 1),
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
                    color: themeColour,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Add to Cart",
                          style: TextStyle(
                            color: Colors.white,
                              fontSize: 14, fontWeight: FontWeight.w400)),
                      SizedBox(width: 22),
                      FaIcon(FontAwesomeIcons.bagShopping, size: 14, color: Colors.white),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
