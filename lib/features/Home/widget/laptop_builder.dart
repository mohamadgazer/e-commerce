import 'package:flutter/material.dart';
import 'package:installment/features/Home/data/loacl_data.dart';
import 'package:installment/features/Home/models/workspaces.dart';
import 'package:installment/features/Home/widget/work_spaces_item.dart';

class LaptopBuilder extends StatelessWidget {
  const LaptopBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<WorkSpaces> list = workSpacesData(context);
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
              child: WorkSpacesItem(
                data: list[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
