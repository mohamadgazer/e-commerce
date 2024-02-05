import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMaterialButton extends StatelessWidget {
  final String text;
  final Color color;
  final double redius;
  final double minWidth;
  final void Function()? onPressed;

  const CustomMaterialButton({
    super.key,
    required this.text,
    required this.color,
    this.redius = 10,
    this.onPressed,
    this.minWidth = 20,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      padding: EdgeInsets.symmetric(vertical: 15.h),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusDirectional.all(
          Radius.circular(redius),
        ),
      ),
      minWidth: double.infinity,
      color: color,
      child: Text(text),
    );
  }
}
