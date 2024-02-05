import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

class PopularContainerBody extends StatelessWidget {
  final List<Widget> children;
  const PopularContainerBody({
    super.key,
    required this.containerKey,
    required this.containerWidth,
    required this.children,
  });

  final GlobalKey<State<StatefulWidget>> containerKey;
  final double containerWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      key: containerKey,
      width: double.infinity,
      height: 220.h,
      decoration: BoxDecoration(
        color: AppColorManger.main,
        borderRadius: BorderRadius.circular(PH.br32),
      ),
      child: Padding(
        padding: EdgeInsets.all(PH.dg24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: containerWidth / 1.6,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: children,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
