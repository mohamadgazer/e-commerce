import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_font.dart';
import 'package:installment/core/theming/app_color.dart';

class AppTextStyleManger {
  //black

  static TextStyle s12BlackGreyDeeper2 = TextStyle(
    fontSize: 12.sp,
    color: AppColorManger.greyDeeper2,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );
  static TextStyle s28BlackBlack = TextStyle(
    fontSize: 28.sp,
    color: AppColorManger.black,
    fontFamily: AppFont.black,
    fontWeight: FontWeight.w900,
  );
  static TextStyle s30Blackwhite = TextStyle(
    fontSize: 28.sp,
    color: AppColorManger.white,
    fontFamily: AppFont.black,
    fontWeight: FontWeight.w900,
  );

  //book
//12
  static TextStyle s12BookGreyDeep = TextStyle(
    fontSize: 12.sp,
    color: AppColorManger.greyDeep,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );
  //15
  static TextStyle s12BookBlack = TextStyle(
    fontSize: 12.sp,
    color: AppColorManger.black,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );

  // 16
  static TextStyle s16BookGreyLighter = TextStyle(
    fontSize: 16.sp,
    color: AppColorManger.greyLighter,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );
  static TextStyle s16BookGreyDeeperr = TextStyle(
    fontSize: 16.sp,
    color: AppColorManger.greyDeeper,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );
  static TextStyle s16BookBlack = TextStyle(
    fontSize: 16.sp,
    color: AppColorManger.black,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );
  static TextStyle s16Booksecondary = TextStyle(
    fontSize: 16.sp,
    color: AppColorManger.secondary,
    fontFamily: AppFont.book,
    fontWeight: FontWeight.normal,
  );
  //roman
  static TextStyle s16WhiteRoman = TextStyle(
    fontSize: 16.sp,
    color: AppColorManger.white,
    fontFamily: AppFont.roman,
    fontWeight: FontWeight.normal,
  );
}
