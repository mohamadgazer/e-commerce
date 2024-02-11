import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/helper/aliment.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/view_item/models/item_model.dart';
import 'package:installment/generated/l10n.dart';

class ViewItemPriceData extends StatelessWidget {
  const ViewItemPriceData({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: PH.h80,
      color: AppColorManger.custom3,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Item End Price
            Text(
              "${convertToArabicNumber(number: itemModel.itemEndPrice, context: context)} \$",
              style: AppTextStyleManger.s21BlackBlack,
            ),
            // item Discount Rate
            Text(
              " ${convertToArabicNumber(number: itemModel.itemDiscountRate * 100, context: context)} % ${S.of(context).off}",
              style: AppTextStyleManger.s18BookGreenDeep,
            ),
          ],
        ),
      ),
    );
  }
}
