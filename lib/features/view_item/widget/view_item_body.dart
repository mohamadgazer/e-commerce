import 'package:flutter/material.dart';
import 'package:installment/features/auth/widget/body_template.dart';
import 'package:installment/features/view_item/widget/view_item_head.dart';

import 'view_i_tem_top_template.dart';

class ViewItemBody extends StatelessWidget {
  const ViewItemBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ViewITemTopTemplate(
          children: [
            ViewItemHead(),
          ],
        ),
        BodyTemplate(
          children: [],
        ),
      ],
    );
  }
}
