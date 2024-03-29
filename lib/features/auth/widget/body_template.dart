import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';

class BodyTemplate extends StatelessWidget {
  final List<Widget> children;
  const BodyTemplate({
    super.key,
    required this.children,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: PH.mainAppPadding,

        // make scroll
        child: SingleChildScrollView(
          // List of Widget

          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: children,
          ),
        ),
      ),
    );
  }
}
