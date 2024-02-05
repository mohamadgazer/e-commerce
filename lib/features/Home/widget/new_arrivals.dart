import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/widget/head_line.dart';
import 'package:installment/features/Home/widget/new_arrivals_builder.dart';
import 'package:installment/generated/l10n.dart';

class NewArrivals extends StatelessWidget {
  const NewArrivals({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadLine(
          onTap: () {},
          text: S.of(context).newArrivals,
        ),
        SizedBox(height: PH.h18),
        const NewArrivalsBuilder()
      ],
    );
  }
}
