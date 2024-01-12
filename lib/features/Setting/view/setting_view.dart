import 'package:flutter/material.dart';

import '../widget/setting_body.dart';

class SettingPageView extends StatelessWidget {
  static const String id = "/settingid";
  const SettingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SettingBody(),
    );
  }
}
