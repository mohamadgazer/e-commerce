import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/helper/aliment.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/view_item/models/item_model.dart';
import 'package:installment/generated/l10n.dart';

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
        Flexible(
          flex: 3,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              //item Name
              Text(
                itemModel.itemEnglish,
                style: AppTextStyleManger.s21BlackBlack,
                // overflow: TextOverflow.clip,
                softWrap: true,
              ),
              Row(
                children: [
                  // item Space
                  Text(
                    itemModel.itemEnglishSpace,
                    style: AppTextStyleManger.s12BookgreyDeeper,
                  ),

                  SizedBox(width: PH.w4),
                  // Item Rate
                  Text(
                    convertToArabicNumber(
                        number: itemModel.itemRate, context: context),
                    style: AppTextStyleManger.s18BookGreenDeep,
                  ),
                  SizedBox(width: PH.w4),
                  // Item Rate icon
                  ...List.generate(
                      5,
                      (index) => Icon(
                            Icons.star,
                            color: Colors.amber,
                            size: 19.r,
                          )),
                ],
              ),
            ],
          ),
        ),
        Flexible(
          child: ViewItemPriceData(itemModel: itemModel),
        )
      ],
    );
  }
}

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
