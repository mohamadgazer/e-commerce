import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/models/laptop.dart';

class LaptopCustomRate extends StatelessWidget {
  const LaptopCustomRate({
    super.key,
    required this.data,
  });

  final LaptopModel data;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(data.rate.toString(), style: AppTextStyleManger.s12BookgreyDeeper),
        SizedBox(width: PH.w1),
        const Icon(
          Icons.star,
          color: Colors.amber,
          size: 13,
        )
      ],
    );
  }
}
