import 'package:flutter/material.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/features/Setting/view/setting_view.dart';
import 'package:installment/features/auth/view/login_view.dart';
import 'package:installment/features/auth/view/signup_view.dart';
import 'package:installment/features/onboarding/view/onboarding_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );

      case Routes.setting:
        return MaterialPageRoute(
          builder: (_) => const SettingPageView(),
        );
      case Routes.signup:
        return MaterialPageRoute(
          builder: (_) => const SignUpView(),
        );
      case Routes.onBoarding:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingView(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) {
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
