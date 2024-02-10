import 'package:flutter/material.dart';
import 'package:installment/features/view_item/models/item_model.dart';
import 'package:installment/features/view_item/widget/item_view.dart';

class ViewItemPageView extends StatelessWidget {
  const ViewItemPageView({
    super.key,
    required this.screenSize,
    required this.itemModel,
  });

  final double screenSize;
  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: screenSize / 2.07,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: itemModel.images.length,
        itemBuilder: (context, index) {
          return ItemView(image: itemModel.images[index]);
        },
      ),
    );
  }
}
