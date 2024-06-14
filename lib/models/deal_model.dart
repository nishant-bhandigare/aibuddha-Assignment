class Deal {
  String imagePath;
  String title;
  int amount;

  Deal({
    required this.imagePath,
    required this.title,
    required this.amount,
  });

  String getFormattedAmount() {
    return '\$${amount.toString()}';
  }
}