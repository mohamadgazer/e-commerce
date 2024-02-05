import 'package:flutter/material.dart';

import '../widget/home_body.dart';

class HomeView extends StatelessWidget {
  static const String id = "/home";
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeBody(),
    );
  }
}
