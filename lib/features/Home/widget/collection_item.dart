import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/colection_model.dart';
import 'package:installment/generated/l10n.dart';

class CollectionItem extends StatelessWidget {
  final CollectionModel data;
  const CollectionItem({
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 142,
              decoration: BoxDecoration(
                color: AppColorManger.white,
                borderRadius: BorderRadius.circular(PH.r8),
              ),
              constraints: const BoxConstraints(maxWidth: 120, maxHeight: 104),
              child: Center(
                child: Image.asset(
                  data.image,
                  fit: BoxFit.contain, // يمكنك اختيار التناسب حسب الحاجة
                ),
              ),
            ),
            SizedBox(
              height: PH.h18,
            ),
            Text(data.name),
            SizedBox(height: PH.h4),
            Text(
              S.of(context).see_Collection,
              style: AppTextStyleManger.s12Booksecondary,
            ),
            SizedBox(height: PH.h20),
          ],
        ),
      ),
    );
  }
}
