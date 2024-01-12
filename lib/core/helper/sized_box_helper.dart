import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizedBoxHelper {
  static SizedBox verticalBox(double height) => SizedBox(
        height: height.h,
      );
  static SizedBox horizontalBox(double width) => SizedBox(
        width: width.w,
      );
}
