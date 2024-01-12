import 'package:flutter/material.dart';
import 'package:installment/core/color/app_color_manger.dart';
import 'package:installment/core/helper/sized_box_helper.dart';
import 'package:installment/features/onboarding/widgt/custom_elevated_button.dart';
import 'package:installment/generated/l10n.dart';

class OnBoardingSignButtons extends StatelessWidget {
  const OnBoardingSignButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomElevatedButton(
          color: AppColorManger.primary,
          text: S.of(context).sign_up,
          onPressed: () {},
        ),
        SizedBoxHelper.horizontalBox(10),
        CustomElevatedButton(
          color: AppColorManger.gray,
          text: S.of(context).log_In,
          onPressed: () {},
        ),
      ],
    );
  }
}
