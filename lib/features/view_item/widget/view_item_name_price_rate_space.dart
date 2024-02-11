import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/helper/aliment.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/view_item/models/item_model.dart';

import 'view_item_price_data.dart';

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
          child: ViewItemNameRateSpaceDATA(itemModel: itemModel),
        ),
        Flexible(
          child: ViewItemPriceData(itemModel: itemModel),
        )
      ],
    );
  }
}

class ViewItemNameRateSpaceDATA extends StatelessWidget {
  const ViewItemNameRateSpaceDATA({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
