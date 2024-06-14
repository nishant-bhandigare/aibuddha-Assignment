class Offer {
  String imagePath;
  String brandLogo;
  int discount;

  Offer({
    required this.imagePath,
    required this.brandLogo,
    required this.discount,
  });

  // Example method to display item information
  String getItemInfo() {
    return 'Brand: $brandLogo\nDiscount: $discount%\nImage Path: $imagePath';
  }
}