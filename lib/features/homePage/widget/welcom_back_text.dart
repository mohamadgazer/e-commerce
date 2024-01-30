import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/generated/l10n.dart';

class WelcomBackText extends StatelessWidget {
  const WelcomBackText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      S.of(context).welcome_Back,
      style: AppTextStyleManger.s28BlackBlack,
    );
  }
}
