import 'package:flutter/material.dart';

Alignment alignmentHelper(BuildContext context) {
  Locale currentLocale = Localizations.localeOf(context);
  Alignment textDirection = currentLocale.languageCode == 'ar'
      ? Alignment.centerLeft
      : Alignment.centerRight;
  return textDirection;
}
