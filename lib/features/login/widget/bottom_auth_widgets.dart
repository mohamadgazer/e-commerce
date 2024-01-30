import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/features/login/view/login_view.dart';
import 'package:installment/generated/l10n.dart';

class BottomSignUpWidgets extends StatelessWidget {
  const BottomSignUpWidgets({
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
          onPressed: () {
            context.pushReplacementNamed(LoginView.id);
          },
          child: Text(
            S.of(context).log_In,
            style: AppTextStyleManger.s16Booksecondary,
          ),
        ),
      ],
    );
  }
}
