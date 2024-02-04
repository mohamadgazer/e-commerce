import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [TopHomeBody()],
      ),
    );
  }
}

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
