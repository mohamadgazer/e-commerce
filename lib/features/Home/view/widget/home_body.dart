import 'package:flutter/material.dart';
import 'package:installment/features/auth/widget/body_template.dart';

import 'top_home_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BodyTemplate(
      children: [
        TopHomeBody(),
      ],
    );
  }
}
