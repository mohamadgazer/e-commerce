import 'package:flutter/material.dart';

import 'top_home_avatar.dart';
import 'top_home_buttons.dart';

class TopHomeBody extends StatelessWidget {
  const TopHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TopHomeAvatar(),
        TopHomeButtons(),
      ],
    );
  }
}
