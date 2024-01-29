import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/homePage/view/home_page_view.dart';
import 'package:installment/generated/l10n.dart';

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
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 34.w, vertical: 25.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  S.of(context).welcom,
                  style: AppTextStyleManger.s12BlackGreyDeeper2,
                ),
                SizedBox(height: 15.h),
                Text(
                  S.of(context).remotelyio,
                  style: AppTextStyleManger.s30Blackwhite,
                ),
                SizedBox(height: 15.h),
                Text(
                  S.of(context).we_serve_you,
                  style: AppTextStyleManger.s16BookGreyLighter,
                ),
                SizedBox(height: 30.w),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.symmetric(
                                  horizontal: screenSize.width / 4,
                                  vertical: 20.h)),
                          backgroundColor:
                              MaterialStatePropertyAll(AppColorManger.primary),
                        ),
                        onPressed: () {},
                        child: Text(
                          S.of(context).browse_Shop,
                          style: AppTextStyleManger.s16BookBlack,
                        ),
                      ),
                      SizedBox(height: 10.h),
                      TextButton(
                        onPressed: () {
                          context.pushReplacementNamed(HomePageView.id);
                        },
                        child: Text(
                          S.of(context).log_In,
                          style: AppTextStyleManger.s16WhiteRoman,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
