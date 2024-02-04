import 'package:flutter/material.dart';
import 'package:installment/core/theming/app_color.dart';

class TopHomeIconButton extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;
  const TopHomeIconButton({
    super.key,
    this.onPressed,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(180),
        border: Border.all(
          color: AppColorManger.greyLighter,
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(icon),
      ),
    );
  }
}
