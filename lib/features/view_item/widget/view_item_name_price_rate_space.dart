import 'package:flutter/material.dart';
import 'package:installment/features/view_item/models/item_model.dart';

import 'view_item_name_rate_space_d_a_t_a.dart';
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
