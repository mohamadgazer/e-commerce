import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/generated/l10n.dart';

class WelcomToText extends StatelessWidget {
  const WelcomToText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: S.of(context).welcom_to,
        style: AppTextStyleManger.s28BlackBlack,
        children: [
          TextSpan(
              text: " ${S.of(context).remotelyio}",
              style: AppTextStyleManger.s28BlackBlack.copyWith(
                color: AppColorManger.primary,
              ))
        ],
      ),
    );
  }
}
