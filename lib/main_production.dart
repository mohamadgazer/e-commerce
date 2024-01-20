import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/routing/app_routers.dart';

import 'main_app.dart';

void main() async {
  await ScreenUtil.ensureScreenSize();
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.amber,
    statusBarColor: Colors.red,
  ));

  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
