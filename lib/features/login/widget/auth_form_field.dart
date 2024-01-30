import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

import 'custom_suffix_icon.dart';

class AuthFormField extends StatelessWidget {
  final bool obsecureText;
  final String label;
  final String hintText;
  final IconData? icon;
  final void Function()? onTap;
  const AuthFormField({
    super.key,
    required this.label,
    required this.hintText,
    this.obsecureText = false,
    this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    // var
    //enabledBorder
    OutlineInputBorder enabledBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.all(
        Radius.circular(
          PaddingHelper.borderReduoc,
        ),
      ),
    );
    //focusedBorder
    OutlineInputBorder focusedBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(
        PaddingHelper.borderReduoc,
      ),
    );

    // main code
    return TextFormField(
      obscureText: obsecureText,
      focusNode: FocusNode(canRequestFocus: true),
      decoration: InputDecoration(
        // FILL COLOR
        filled: true,
        fillColor: AppColorManger.shade,
        //Hint
        hintText: hintText,
        suffixIcon: CustomSuffixIcon(onTap: onTap, icon: icon),
        // BORDERS
        enabledBorder: enabledBorder,
        focusedBorder: focusedBorder,
      ),
    );
  }
}