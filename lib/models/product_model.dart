class ProductItem {
  String productName;
  String brandName;
  int oldPrice;
  int newPrice;
  int discount;
  List<String> imagePaths;

  ProductItem({
    required this.productName,
    required this.brandName,
    required this.oldPrice,
    required this.newPrice,
    required this.discount,
    required this.imagePaths,
  });

  double calculateDiscountPercentage() {
    if (oldPrice == 0) return 0.0;
    return ((oldPrice - newPrice) / oldPrice) * 100;
  }
}
