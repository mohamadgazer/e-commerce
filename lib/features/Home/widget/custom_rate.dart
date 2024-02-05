import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/models/nowArrival.dart';

class CustomRate extends StatelessWidget {
  const CustomRate({
    super.key,
    required this.data,
  });

  final NowArrival data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(data.space, style: AppTextStyleManger.s12BookgreyDeeper),
        SizedBox(width: PH.w8),
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
