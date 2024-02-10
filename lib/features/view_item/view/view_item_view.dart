import 'package:flutter/material.dart';

import '../widget/view_item_body.dart';

class ViewItemView extends StatelessWidget {
  static const String id = "/viewItem";
  const ViewItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ViewItemBody(),
    );
  }
}
