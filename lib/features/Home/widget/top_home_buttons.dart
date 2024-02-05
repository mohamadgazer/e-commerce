import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/features/Home/widget/top_home_icon_button.dart';

class TopHomeButtons extends StatelessWidget {
  const TopHomeButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TopHomeIconButton(
          icon: Icons.search,
          onPressed: () {},
        ),
        SizedBox(width: 10.w),
        TopHomeIconButton(
          icon: Icons.list_alt,
          onPressed: () {},
        ),
      ],
    );
  }
}
