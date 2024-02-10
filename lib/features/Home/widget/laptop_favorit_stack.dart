import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/laptop.dart';
import 'package:installment/features/Home/widget/custom_favorit_widget.dart';
import 'package:installment/features/Home/widget/laptop_item_image.dart';

class LaptopFavoritStack extends StatelessWidget {
  const LaptopFavoritStack({
    super.key,
    required this.data,
  });

  final LaptopModel data;

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
              clipBehavior: Clip.none,
              // clipBehavior: Clip.hard,
              alignment: Alignment.topRight,
              children: [
                LaptopItemImage(data: data),
                GestureDetector(
                  onTap: () {},
                  child: const CustomFavoritWidget(),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
