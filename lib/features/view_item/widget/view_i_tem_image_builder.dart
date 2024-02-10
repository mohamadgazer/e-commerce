import 'package:flutter/material.dart';
import 'package:installment/features/view_item/models/item_model.dart';

import 'view_item_page_view.dart';

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
        ViewItemPageView(screenSize: screenSize, itemModel: itemModel),
      ],
    );
  }
}
