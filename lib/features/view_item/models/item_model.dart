class ItemModel {
  final List<ImageItem> images;
  final double itemPrice;
  final double itemDiscountRate;
  // payment and view item price
  final double itemEndPrice;
  final double itemRate;
  final String itemName;
  final String itemSpace;
  final String itemDescription;

  ItemModel({
    required this.images,
    required this.itemPrice,
    required this.itemRate,
    this.itemDiscountRate = 0,
    required this.itemName,
    required this.itemSpace,
    required this.itemDescription,
  }) : itemEndPrice = itemDiscountRate == 0 || itemDiscountRate > 0
            ? itemPrice
            : itemPrice - (itemPrice / itemDiscountRate);
}

class ImageItem {
  final String image;

  ImageItem({required this.image});
}
