import 'package:flutter/material.dart';
import 'package:installment/features/Home/models/laptop.dart';

class LaptopItemImage extends StatelessWidget {
  const LaptopItemImage({
    super.key,
    required this.data,
  });

  final LaptopModel data;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 120, maxHeight: 104),
      child: Center(
        child: Image.asset(
          data.image,
          fit: BoxFit.contain, // يمكنك اختيار التناسب حسب الحاجة
        ),
      ),
    );
  }
}
