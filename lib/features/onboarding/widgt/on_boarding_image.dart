import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/features/onboarding/data/onboarding_local_data.dart';

class OnBoardingImage extends StatelessWidget {
  const OnBoardingImage({
    super.key,
    required this.list,
    required this.index,
  });

  final List<OnBoardingModel> list;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300.w,
      height: 300.h,
      decoration: BoxDecoration(
          color: Colors.amber,
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.contain,
            image: AssetImage(list[index].image),
          )),
    );
  }
}
