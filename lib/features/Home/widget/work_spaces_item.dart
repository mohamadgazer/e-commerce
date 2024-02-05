import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

class WorkSpacesItem extends StatelessWidget {
  const WorkSpacesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(PH.r8),
        ),
        color: AppColorManger.whiteShade,
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 120, maxHeight: 104),
              child: Image.asset(
                AppImageManger.home_01,
                fit: BoxFit.contain, // يمكنك اختيار التناسب حسب الحاجة
              ),
            ),
            SizedBox(
              height: PH.h18,
            ),
            const Text("Developer"),
            SizedBox(
              height: PH.h10,
            ),
            const Text("21 suggested item"),
          ],
        ),
      ),
    );
  }
}
