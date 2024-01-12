import 'package:flutter/material.dart';
import 'package:installment/core/routing/app_routers.dart';

import 'main_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MainApp(
    appRouter: AppRouter(),
  ));
}
