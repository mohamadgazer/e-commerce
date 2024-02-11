import 'package:flutter/material.dart';
import 'package:installment/core/helper/aliment.dart';
import 'package:installment/features/view_item/models/item_model.dart';

class ViewItemNamePriceRateSpace extends StatelessWidget {
  const ViewItemNamePriceRateSpace({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          children: [
            Text(itemModel.itemEnglish),
            Row(
              children: [
                Text(itemModel.itemEnglishSpace),
                Text(convertToArabicNumber(
                    number: itemModel.itemRate, context: context)),
                ...List.generate(
                    5,
                    (index) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        )),
              ],
            ),
          ],
        ),
        Column(
          children: [
            Text(convertToArabicNumber(
                number: itemModel.itemEndPrice, context: context)),
            Text(
                " ${convertToArabicNumber(number: itemModel.itemDiscountRate * 100, context: context)} %"),
          ],
        )
      ],
    );
  }
}
