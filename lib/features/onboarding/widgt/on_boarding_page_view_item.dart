import 'package:flutter/material.dart';
import 'package:installment/core/color/app_color_manger.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/core/helper/sized_box_helper.dart';
import 'package:installment/features/homePage/view/home_page_view.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';
import 'package:installment/features/onboarding/widgt/custom_elevated_button.dart';
import 'package:installment/generated/l10n.dart';

import 'on_boarding_image.dart';
import 'on_boarding_page_view_dots.dart';
import 'on_boarding_sign_buttons.dart';
import 'onboarding_text.dart';

class OnBoardingPageViewItem extends StatelessWidget {
  final int index;
  final int currentPage;
  final List<OnBoardingModel> list;
  const OnBoardingPageViewItem({
    super.key,
    required this.index,
    required this.list,
    required this.currentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OnBoardingImage(list: list, index: index),
              SizedBoxHelper.verticalBox(20),
              OnboardingText(list: list, index: index),
              SizedBoxHelper.verticalBox(50),
              OnBoardingPageViewDots(list: list, currentPage: currentPage),
              SizedBoxHelper.verticalBox(50),
              currentPage == list.length - 1
                  ? const OnBoardingSignButtons()
                  : const SizedBox.shrink(),
              SizedBoxHelper.verticalBox(10),
              currentPage == list.length - 1
                  ? CustomElevatedButton(
                      color: AppColorManger.gray,
                      text: S.of(context).home_page,
                      onPressed: () {
                        context.pushReplacementNamed(HomePageView.id);
                      },
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
