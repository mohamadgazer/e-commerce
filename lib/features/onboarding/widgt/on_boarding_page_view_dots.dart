import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/color/app_color_manger.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

class OnBoardingPageViewDots extends StatelessWidget {
  const OnBoardingPageViewDots({
    super.key,
    required this.list,
    required this.currentPage,
  });

  final List<OnBoardingModel> list;
  final int currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          list.length,
          (index) => Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              decoration: BoxDecoration(
                  color: index == currentPage
                      ? AppColorManger.amber
                      : AppColorManger.gray,
                  shape: BoxShape.circle),
              width: 15.w,
              height: 15.h,
            ),
          ),
        ),
      ],
    );
  }
}
