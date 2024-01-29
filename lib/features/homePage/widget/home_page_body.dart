import 'package:flutter/material.dart';
import 'package:installment/core/app_text_style_manger.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/generated/l10n.dart';

import 'hi_text.dart';
import 'home_login_button_ui.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingHelper.allAppw, vertical: PaddingHelper.allApph),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Spacer(),
          const HiText(),
          Text(S.of(context).welcome_Back,
              style: AppTextStyleManger.s28BlackBlack),
          SizedBox(height: PaddingHelper.sbH60),
          const HomeLoginButtonUi(),
        ],
      ),
    );
  }
}
