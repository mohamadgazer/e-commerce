import 'package:flutter/material.dart';

class TopHomeBody extends StatelessWidget {
  const TopHomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("data"),
        Text("data"),
      ],
    );
  }
}
