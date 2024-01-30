import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/homePage/widget/login_input_form.dart';

import 'bottom_auth_widgets.dart';
import 'hi_text.dart';
import 'home_login_button_ui.dart';
import 'or_text.dart';
import 'welcom_back_text.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Screen Padding
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: PaddingHelper.allAppw, vertical: PaddingHelper.allApph),

      // make scroll
      child: SingleChildScrollView(
        // List of Widget

        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 70),
            // HEAD TEXT
            const HiText(),
            const WelcomBackText(),
            SizedBox(height: PaddingHelper.sbH60),
            // LOGIN WITH BUTTONS
            const HomeLoginButtonUi(),
            // OR TEXT
            const OrText(),
            // *** TEXT FORM FEILD  AND LOGIN BUTTON
            const LoginInputForm(),
            SizedBox(height: PaddingHelper.sbH20),
            // FORGET PASSWORD AND SIGNUP BUTTONS
            const BottomAuthWidgets(),
          ],
        ),
      ),
    );
  }
}
