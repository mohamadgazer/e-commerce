import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/generated/l10n.dart';

class HeadLine extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const HeadLine({
    super.key,
    this.onTap,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTextStyleManger.s21BlackBlack,
          ),
          Row(
            children: [
              Text(
                S.of(context).see_more,
                style: AppTextStyleManger.s12BookgreyDeeper,
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: AppColorManger.greyDeeper,
              )
            ],
          ),
        ],
      ),
    );
  }
}
