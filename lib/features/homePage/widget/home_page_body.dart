import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/generated/l10n.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingHelper.allApp, vertical: PaddingHelper.allApp),
      child: Column(
        children: [
          Text(S.of(context).save_data),
        ],
      ),
    );
  }
}
