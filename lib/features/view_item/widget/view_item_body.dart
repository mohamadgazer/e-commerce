import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/auth/widget/body_template_view_item.dart';
import 'package:installment/features/view_item/models/item_model.dart';
import 'package:installment/features/view_item/widget/view_item_head.dart';

import 'view_i_tem_image_builder.dart';
import 'view_i_tem_top_template.dart';
import 'view_item_name_price_rate_space.dart';

class ViewItemBody extends StatelessWidget {
  final ItemModel itemModel;
  const ViewItemBody({
    super.key,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Column(
        children: [
          ViewITemTopTemplate(
            children: [
              const ViewItemHead(),
              ViewITemImageBuilder(itemModel: itemModel),
            ],
          ),
          BodyTemplateViewItem(children: [
            ViewItemNamePriceRateSpace(itemModel: itemModel),
            SizedBox(height: PH.h34),
            Text(
              itemModel.itemEnglishDescription,
              style: AppTextStyleManger.s16BookBlack,
            ),
          ]),
        ],
      ),
    );
  }
}
