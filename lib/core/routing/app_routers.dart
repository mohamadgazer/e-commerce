import 'package:flutter/material.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/features/Home/view/home.dart';
import 'package:installment/features/Setting/view/setting_view.dart';
import 'package:installment/features/auth/view/login_view.dart';
import 'package:installment/features/auth/view/signup_view.dart';
import 'package:installment/features/onboarding/view/onboarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      //auth
      //*** Login */

      case Routes.login:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      //*** signuo */
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );

// setting
      case Routes.setting:
        return MaterialPageRoute(
          builder: (_) => const SettingPageView(),
        );

      // onBoarding
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );

      // home
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const HomeView(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) {
            return Scaffold(
              appBar: AppBar(
                title: Text('no route defined for ${settings.name}'),
              ),
              body: Container(),
            );
          },
        );
    }
  }
}
