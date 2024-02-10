import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

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
        padding: PH.mainAppPadding,
        child: Column(
          children: children,
        ),
      ),
    );
  }
}
