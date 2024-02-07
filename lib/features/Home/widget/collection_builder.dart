import 'package:flutter/material.dart';
import 'package:installment/features/Home/data/loacl_data.dart';
import 'package:installment/features/Home/models/colection_model.dart';
import 'package:installment/features/Home/widget/collection_item.dart';

class CollectionBuilder extends StatelessWidget {
  const CollectionBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<CollectionModel> list = collectionModelData(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            list.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: CollectionItem(
                data: list[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
