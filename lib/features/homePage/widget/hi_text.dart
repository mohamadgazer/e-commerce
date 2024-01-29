import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/generated/l10n.dart';

class HiText extends StatelessWidget {
  const HiText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          S.of(context).hI_FELLA,
          style: AppTextStyleManger.s16BookGreyDeeperr,
        ),
        const SizedBox(width: 3),
        const Icon(
          Icons.waving_hand_rounded,
          color: Colors.amber,
        )
      ],
    );
  }
}
