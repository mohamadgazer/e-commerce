import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/widget/head_line.dart';
import 'package:installment/features/Home/widget/laptop_builder.dart';
import 'package:installment/generated/l10n.dart';

class LaptopBody extends StatelessWidget {
  const LaptopBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadLine(
          onTap: () {},
          text: S.of(context).laptop,
        ),
        SizedBox(height: PH.h18),
        const LaptopBuilder()
      ],
    );
  }
}
