import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/workspaces.dart';

class WorkSpacesItem extends StatelessWidget {
  final WorkSpaces data;
  const WorkSpacesItem({
    super.key,
    required this.data,
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
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Container(
              constraints: const BoxConstraints(maxWidth: 120, maxHeight: 104),
              child: Image.asset(
                data.image,
                fit: BoxFit.contain, // يمكنك اختيار التناسب حسب الحاجة
              ),
            ),
            SizedBox(
              height: PH.h18,
            ),
            Text(data.workSpace),
            SizedBox(
              height: PH.h10,
            ),
            Text("${data.suggestedItem} suggested item"),
          ],
        ),
      ),
    );
  }
}
