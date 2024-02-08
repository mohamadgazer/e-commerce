import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/now_arrival.dart';

class NewArrivalsItemImage extends StatelessWidget {
  const NewArrivalsItemImage({
    super.key,
    required this.data,
  });

  final NowArrivalModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColorManger.whiteShade,
          borderRadius: BorderRadius.circular(PH.r8)),
      width: 105,
      height: 86,
      constraints: const BoxConstraints(maxHeight: 86, maxWidth: 105),
      child: Center(
        child: Image.asset(
          data.image,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
