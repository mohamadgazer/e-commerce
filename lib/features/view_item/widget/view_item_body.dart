import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/auth/widget/body_template.dart';
import 'package:installment/features/view_item/widget/view_item_head.dart';

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

class ViewITemTopTemplate extends StatelessWidget {
  final List<Widget> children;
  const ViewITemTopTemplate({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColorManger.whiteShade,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: PH.w24, vertical: PH.h40),
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
