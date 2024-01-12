import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/app_local.dart';
import 'package:installment/core/routing/app_routers.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/generated/l10n.dart';

import 'core/app_scroll_behavior.dart';

class MainApp extends StatelessWidget {
  final AppRouter appRouter;
  const MainApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData.dark();
    // .copyWith(
    //   textTheme: const TextTheme(
    //     bodyLarge: TextStyle(
    //       color: Colors.black,
    //       fontFamily: 'Rubik',
    //       fontSize: 16.0,
    //       fontWeight: FontWeight.normal,
    //     ),
    //     bodyMedium: TextStyle(
    //       color: Colors.black,
    //       fontFamily: 'Rubik',
    //       fontSize: 14.0,
    //       fontWeight: FontWeight.normal,
    //     ),
    //     displayLarge: TextStyle(
    //       color: Colors.black,
    //       fontFamily: 'Rubik',
    //       fontSize: 32.0,
    //       fontWeight: FontWeight.bold,
    //     ),
    //   ),
    // );
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      child: MaterialApp(
        //theme
        theme: themeData,
        //local
        debugShowCheckedModeBanner: false,
        localizationsDelegates: localizationsDelegates,
        supportedLocales: S.delegate.supportedLocales,
        locale: const Locale("en"),

        //route
        onGenerateRoute: appRouter.generateRoute,
        initialRoute: Routes.onBoarding,
        //scrool
        scrollBehavior: AppScrollBehavior(),
      ),
    );
  }
}
