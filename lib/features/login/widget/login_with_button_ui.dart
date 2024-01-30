import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/login/widget/home_login_button.dart';
import 'package:installment/generated/l10n.dart';

class LoginWithButtonUi extends StatelessWidget {
  const LoginWithButtonUi({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeLoginButton(
          text: S.of(context).login_with_google,
          icon: AppImageManger.googleIcon,
          onTap: () {},
        ),
        SizedBox(height: PaddingHelper.sbH20),
        HomeLoginButton(
          text: S.of(context).login_with_facebook,
          icon: AppImageManger.facebookIcon,
          onTap: () {},
        ),
      ],
    );
  }
}
