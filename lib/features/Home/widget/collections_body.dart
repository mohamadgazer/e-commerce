import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/widget/collection_builder.dart';
import 'package:installment/features/Home/widget/head_line.dart';
import 'package:installment/generated/l10n.dart';

class CollectionsBody extends StatelessWidget {
  const CollectionsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadLine(
          onTap: () {},
          text: S.of(context).collection,
        ),
        SizedBox(height: PH.h18),
        const CollectionBuilder()
      ],
    );
  }
}
