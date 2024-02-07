import 'package:flutter/material.dart';
import 'package:installment/features/Home/data/loacl_data.dart';
import 'package:installment/features/Home/models/laptop.dart';
import 'package:installment/features/Home/widget/laptop_item.dart';

class LaptopBuilder extends StatelessWidget {
  const LaptopBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<LaptopModel> list = laptopData(context);
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
              child: LaptopItem(
                data: list[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
