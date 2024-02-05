import 'package:flutter/material.dart';
import 'package:installment/core/theming/app_color.dart';

class TopHomeAvatar extends StatelessWidget {
  const TopHomeAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColorManger.primary,
      child: const Text("user"),
    );
  }
}
