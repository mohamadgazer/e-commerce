import 'package:flutter/material.dart';
import 'package:installment/features/Home/widget/head_line.dart';
import 'package:installment/features/auth/widget/body_template.dart';

class ViewItemBody extends StatelessWidget {
  const ViewItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const BodyTemplate(
      children: [
        HeadLine(text: "text"),
      ],
    );
  }
}
