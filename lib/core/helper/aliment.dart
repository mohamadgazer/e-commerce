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

// String convertToArabicNumber(
//     {required String number, required BuildContext context}) {
//   Locale currentLocale = Localizations.localeOf(context);
//   String res = '';
//   if (currentLocale.languageCode == 'ar') {
//     final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
//     for (var element in number.characters) {
//       res += arabics[int.parse(element)];
//     }
//   } else {
//     final latins = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
//     for (var element in number.characters) {
//       res += latins[int.parse(element)];
//     }
//   }

//   return res;
// }
String convertToArabicNumber(
    {required num number, required BuildContext context}) {
  Locale currentLocale = Localizations.localeOf(context);
  String res = '';
  String numberString = number.toString();

  if (currentLocale.languageCode == 'ar') {
    final arabics = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];
    for (var element in numberString.characters) {
      if (element == '.') {
        res += '.';
      } else {
        res += arabics[int.parse(element)];
      }
    }
  } else {
    final latins = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    for (var element in numberString.characters) {
      if (element == '.') {
        res += '.';
      } else {
        res += latins[int.parse(element)];
      }
    }
  }

  return res;
}

// ========================================
// currency

Map<String, String> currencyMap = {
  "usd": "دولار",
  "LE": "جنية",
};

String converCurrencyToArabic(
    {required String currency, required BuildContext context}) {
  Locale currentLocale = Localizations.localeOf(context);
  if (currentLocale.languageCode == 'ar') {
    return currencyMap[currency]!;
  } else {
    return currency;
  }
}
