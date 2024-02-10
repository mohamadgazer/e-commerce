import 'package:flutter/material.dart';

class ItemView extends StatelessWidget {
  const ItemView({
    super.key,
    required this.image,
  });

  final String image;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      image,
      fit: BoxFit.fitHeight,
    );
  }
}
