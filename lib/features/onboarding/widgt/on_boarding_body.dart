import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
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
            padding: const EdgeInsets.all(34.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(S.of(context).welcom),
                const SizedBox(height: 16),
                Text(S.of(context).remotelyio),
                const SizedBox(height: 16),
                Text(S.of(context).we_serve_you),
                const SizedBox(height: 45),
                Center(
                  child: Column(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Text(S.of(context).browse_Shop),
                      ),
                      const SizedBox(height: 20),
                      TextButton(
                        onPressed: () {},
                        child: Text(S.of(context).log_In),
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
