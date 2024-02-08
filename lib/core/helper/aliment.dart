import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

Alignment alignmentHelper(BuildContext context) {
  Locale currentLocale = Localizations.localeOf(context);
  Alignment textDirection = currentLocale.languageCode == 'ar'
      ? Alignment.centerLeft
      : Alignment.centerRight;

  return textDirection;
}

class NumberFormatHelper {
  static String formatNumber(int number, BuildContext context) {
    Locale currentLocale = Localizations.localeOf(context);
    NumberFormat numberFormat =
        NumberFormat.decimalPattern(currentLocale.languageCode);
    return numberFormat.format(number);
  }
}

String convertToArabicNumber(
    {required String number, required BuildContext context}) {
  Locale currentLocale = Localizations.localeOf(context);
  String res = '';
  if (currentLocale.languageCode == 'ar') {
    final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    for (var element in number.characters) {
      res += arabics[int.parse(element)];
    }
  } else {
    final latins = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    for (var element in number.characters) {
      res += latins[int.parse(element)];
    }
  }

  return res;
}

// String convertToArabicNumber(
//     {required String number, required BuildContext context}) {
//   Locale currentLocale = Localizations.localeOf(context);
//   String res = '';
//   if (currentLocale.languageCode == 'ar') {
//     final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
//     try {
//       double numericValue = double.parse(number);
//       String numericString = numericValue.toString();
//       if (numericString.contains('.')) {
//         List<String> parts = numericString.split('.');
//         res += '${convertToArabicNumber(number: parts[0], context: context)}.';
//         res += convertToArabicNumber(number: parts[1], context: context);
//       } else {
//         for (var element in numericString.characters) {
//           res += arabics[int.parse(element)];
//         }
//       }
//     } catch (e) {
//       // Handle parsing error, if any
//       res = number;
//     }
//   } else {
//     final latins = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
//     try {
//       double numericValue = double.parse(number);
//       String numericString = numericValue.toString();
//       if (numericString.contains('.')) {
//         List<String> parts = numericString.split('.');
//         res += '${convertToArabicNumber(number: parts[0], context: context)}.';
//         res += convertToArabicNumber(number: parts[1], context: context);
//       } else {
//         for (var element in numericString.characters) {
//           res += latins[int.parse(element)];
//         }
//       }
//     } catch (e) {
//       // Handle parsing error, if any
//       res = number;
//     }
//   }

//   return res;
// }
