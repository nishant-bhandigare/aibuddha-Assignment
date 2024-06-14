class Offer {
  String imagePath;
  String brandName;
  int discount;

  Offer({
    required this.imagePath,
    required this.brandName,
    required this.discount,
  });

  // Example method to display item information
  String getItemInfo() {
    return 'Brand: $brandName\nDiscount: $discount%\nImage Path: $imagePath';
  }
}