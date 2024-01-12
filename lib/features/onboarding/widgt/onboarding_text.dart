import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

class OnboardingText extends StatelessWidget {
  const OnboardingText({
    super.key,
    required this.list,
    required this.index,
  });

  final List<OnBoardingModel> list;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Text(
      list[index].text,
      textAlign: TextAlign.center,
      style: AppTextStyleManger.size15FontWidgtsimiBold,
    );
  }
}
