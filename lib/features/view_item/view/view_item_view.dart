import 'package:flutter/material.dart';
import 'package:installment/features/view_item/models/item_model.dart';

import '../widget/view_item_body.dart';

class ViewItemView extends StatelessWidget {
  static const String id = "/viewItem";
  final ItemModel itemModel;
  const ViewItemView({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ViewItemBody(
        itemModel: itemModel,
      ),
    );
  }
}
