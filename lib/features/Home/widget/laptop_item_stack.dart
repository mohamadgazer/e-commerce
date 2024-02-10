import 'package:flutter/material.dart';
import 'package:installment/features/Home/models/laptop.dart';
import 'package:installment/features/Home/widget/laptop_item_details.dart';

import 'laptop_favorit_stack.dart';

class LaptopItem extends StatelessWidget {
  final LaptopModel data;
  const LaptopItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.bottomCenter,
      children: [
        LaptopFavoritStack(data: data),
        Positioned(
          // top: 80,
          left: 7,
          right: 7,
          bottom: 5,
          // width: 20,
          // height: 100,
          // width: 150,
          child: LaptopItemDetails(data: data),
        ),
      ],
    );
  }
}
