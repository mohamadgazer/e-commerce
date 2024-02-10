class ItemModel {
  final List<ImageItem> images;
  final double itemPrice;
  final double itemRate;
  final double itemDiscountRate;
  final String itemName;
  final String itemSpace;
  final String itemDescription;

  ItemModel({
    required this.images,
    required this.itemPrice,
    required this.itemRate,
    required this.itemDiscountRate,
    required this.itemName,
    required this.itemSpace,
    required this.itemDescription,
  });
}

class ImageItem {
  final String image;

  ImageItem({required this.image});
}
