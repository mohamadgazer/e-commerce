import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/laptop.dart';
import 'package:installment/features/Home/widget/laptop_custom_rate.dart';

class LaptopItemDetails extends StatelessWidget {
  const LaptopItemDetails({
    super.key,
    required this.data,
  });

  final LaptopModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: 142,
      // height: 120,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(PH.r8),
        ),
        color: AppColorManger.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(data.name),
            SizedBox(height: PH.h4),
            Text(
              "USD ${data.price}",
              style: AppTextStyleManger.s12Booksecondary,
            ),
            SizedBox(height: PH.h4),
            LaptopCustomRate(data: data),
          ],
        ),
      ),
    );
  }
}
