import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';

class OnBoardingBody extends StatelessWidget {
  const OnBoardingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
        width: screenSize.width, // تحديد عرض الصورة بناءً على عرض الشاشة
        height: screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImageManger.onboarding_image),
          ),
        ),
        child: const SafeArea(
          child: Column(
            children: [],
          ),
        ));
  }
}
