import 'package:flutter/material.dart';

import '../widget/login_body.dart';

class LoginView extends StatelessWidget {
  static const String id = "/login";
  const LoginView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // resizeToAvoidBottomInset: false,
      // appBar: AppBar(

      //   actions: [
      //     IconButton(onPressed: () {}, icon: const Icon(Icons.settings))
      //   ],
      // ),
      body: LoginBody(),
    );
  }
}
