import 'package:flutter/material.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/core/theming/app_color.dart';

class ViewItemHead extends StatelessWidget {
  final void Function()? onPressed;
  const ViewItemHead({
    super.key,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            context.pop();
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: AppColorManger.custom1,
          ),
        ),
        // ignore: avoid_unnecessary_containers
        Container(
          child: IconButton(
            icon: const Icon(Icons.my_library_add_outlined),
            onPressed: onPressed,
          ),
        )
      ],
    );
  }
}
