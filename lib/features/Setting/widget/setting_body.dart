import 'package:flutter/material.dart';
import 'package:installment/generated/l10n.dart';

class SettingBody extends StatelessWidget {
  const SettingBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(S.of(context).them_condication),
    );
  }
}
