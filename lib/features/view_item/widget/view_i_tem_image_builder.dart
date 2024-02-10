import 'package:flutter/material.dart';
import 'package:installment/features/view_item/models/item_model.dart';

class ViewITemImageBuilder extends StatelessWidget {
  const ViewITemImageBuilder({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox.square(
      // height: 300,
      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        itemCount: itemModel.images.length,
        itemBuilder: (context, index) {
          return Image.asset(
            itemModel.images[index],
            fit: BoxFit.fitHeight,
          );
        },
      ),
    );
  }
}
