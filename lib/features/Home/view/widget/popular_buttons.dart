import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/auth/widget/custom_material_button.dart';

class PopularButtons extends StatelessWidget {
  const PopularButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: CustomMaterialButton(
            text: "view Item",
            onPressed: () {},
            redius: PH.r8,
            color: AppColorManger.primary,
          ),
        ),
        SizedBox(
          width: PH.w10,
        ),
        Flexible(
          child: Container(
            decoration: BoxDecoration(
              color: AppColorManger.greyDeeper.withOpacity(0.2),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: AppColorManger.greyDeeper,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
