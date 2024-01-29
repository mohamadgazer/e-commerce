import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';

import 'hi_text.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingHelper.allAppw, vertical: PaddingHelper.allApph),
      child: const Column(
        children: [
          Spacer(),
          HiText(),
        ],
      ),
    );
  }
}
