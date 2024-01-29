import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

class HomeLoginButton extends StatelessWidget {
  final String text;
  final String icon;
  const HomeLoginButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius:
              BorderRadius.all(Radius.circular(PaddingHelper.borderReduoc)),
          border: Border.all(color: AppColorManger.greyDeep)),
      child: ListTile(
        title: Text(text),
        leading: Image.asset(icon),
      ),
    );
  }
}
