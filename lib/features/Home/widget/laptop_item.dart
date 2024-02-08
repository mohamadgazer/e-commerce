import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/laptop.dart';
import 'package:installment/features/Home/widget/laptop_item_details.dart';
import 'package:installment/features/Home/widget/new_arrivals_item.dart';

import 'laptop_item_image.dart';

class LaptopItem extends StatelessWidget {
  final LaptopModel data;
  const LaptopItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: PH.w158,
          height: 205.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(PH.r8),
            ),
            color: AppColorManger.whiteShade,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(
              // clipBehavior: Clip.hard,
              alignment: Alignment.topRight,
              children: [
                LaptopItemImage(data: data),
                GestureDetector(
                  onTap: () {},
                  child: const CustomFavoritWidget(),
                ),
                Positioned(
                  top: 75,
                  left: 0,
                  bottom: -15,
                  width: 135,
                  // height: 150,
                  // width: 150,
                  child: LaptopItemDetails(data: data),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
