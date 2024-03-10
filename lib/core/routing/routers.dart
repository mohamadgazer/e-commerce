import 'package:installment/features/Home/view/home.dart';
import 'package:installment/features/Setting/view/setting_view.dart';
import 'package:installment/features/auth/view/login_view.dart';
import 'package:installment/features/auth/view/signup_view.dart';
import 'package:installment/features/view_item/view/view_item_view.dart';

class Routes {
  // setting
  static const String setting = SettingPageView.id;
  // on bording
  static const String onBoarding = "/";
  // auth
  static const String login = LoginView.id;
  static const String signup = SignUpView.id;
  // home
  static const String home = HomeView.id;
  // view Item
  static const String viewItem = ViewItemView.id;
}
