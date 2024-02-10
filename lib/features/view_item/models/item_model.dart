class ItemModel {
  // item image
  final List<String> images;
  // item pricing
  final double itemPrice;
  final double itemDiscountRate;
  // payment and view item price
  final double itemEndPrice;
  final double itemRate;
  //names
  final String itemEnglish;
  final String itemArabicName;
  // Item specifications
  final String itemEnglishSpace;
  final String itemArabicSpace;
  // item description
  final String itemEnglishDescription;
  final String itemArabicDescription;

  ItemModel(
      {required this.images,
      required this.itemPrice,
      required this.itemDiscountRate,
      required this.itemRate,
      required this.itemEnglish,
      required this.itemArabicName,
      required this.itemEnglishSpace,
      required this.itemArabicSpace,
      required this.itemEnglishDescription,
      required this.itemArabicDescription})
      : itemEndPrice = itemDiscountRate == 0 || itemDiscountRate > 0
            ? itemPrice
            : itemPrice - (itemPrice / itemDiscountRate);
}
