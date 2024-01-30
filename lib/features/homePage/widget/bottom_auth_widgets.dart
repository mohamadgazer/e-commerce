import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/generated/l10n.dart';

class BottomAuthWidgets extends StatelessWidget {
  const BottomAuthWidgets({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        MaterialButton(
          onPressed: () {},
          child: Text(
            S.of(context).forget_password,
            style: AppTextStyleManger.s16BookGreyDeeperr,
          ),
        ),
        MaterialButton(
          onPressed: () {},
          child: Text(
            S.of(context).sign_up,
            style: AppTextStyleManger.s16Booksecondary,
          ),
        ),
      ],
    );
  }
}
