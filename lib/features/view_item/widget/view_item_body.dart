import 'package:flutter/material.dart';
import 'package:installment/features/auth/widget/body_template.dart';
import 'package:installment/features/view_item/models/item_model.dart';
import 'package:installment/features/view_item/widget/view_item_head.dart';

import 'view_i_tem_image_builder.dart';
import 'view_i_tem_top_template.dart';

class ViewItemBody extends StatelessWidget {
  final ItemModel itemModel;
  const ViewItemBody({
    super.key,
    required this.itemModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ViewITemTopTemplate(
          children: [
            const ViewItemHead(),
            ViewITemImageBuilder(itemModel: itemModel),
          ],
        ),
        BodyTemplate(
          children: [
            Text(itemModel.itemEnglishDescription),
          ],
        ),
      ],
    );
  }
}
