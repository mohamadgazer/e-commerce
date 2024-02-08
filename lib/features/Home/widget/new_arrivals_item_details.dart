import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/helper/aliment.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/models/now_Arrival.dart';
import 'package:installment/features/Home/widget/custom_rate.dart';

class NewArrivalsItemDetails extends StatelessWidget {
  const NewArrivalsItemDetails({
    super.key,
    required this.data,
  });

  final NowArrivalModel data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(data.name, style: AppTextStyleManger.s16BookBlack),
        SizedBox(height: PH.h4),
        CustomRate(data: data),
        SizedBox(height: PH.h12),
        Text(
          "\$${convertToArabicNumber(number: data.price.toString(), context: context)}",
          style: AppTextStyleManger.s16Booksecondary,
        ),
      ],
    );
  }
}
