import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

import 'custom_suffix_icon.dart';

class AuthFormField extends StatelessWidget {
  final bool obsecureText;
  final String? label;
  final String? hintText;
  final IconData? icon;
  final void Function()? onTap;
  final TextEditingController? controller;
  const AuthFormField({
    super.key,
    this.label,
    this.hintText,
    this.obsecureText = false,
    this.icon,
    this.onTap,
    this.controller,
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
          PH.br8,
        ),
      ),
    );
    //focusedBorder
    OutlineInputBorder focusedBorder = OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.transparent,
      ),
      borderRadius: BorderRadius.circular(
        PH.br8,
      ),
    );

    // main code
    return TextFormField(
      controller: controller,
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
