import 'package:flutter/material.dart';

import '../widget/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  static const String id = "/signup";
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpBody(),
    );
  }
}
