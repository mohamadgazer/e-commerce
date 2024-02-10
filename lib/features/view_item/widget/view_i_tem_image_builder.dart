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
    var screenSize = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        SizedBox(
          height: screenSize / 2.07,
          child: PageView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: itemModel.images.length,
            itemBuilder: (context, index) {
              return ItemView(image: itemModel.images[index]);
            },
          ),
        ),
      ],
    );
  }
}

class ItemView extends StatelessWidget {
  const ItemView({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fitHeight,
    );
  }
}
