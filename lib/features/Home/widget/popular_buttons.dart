import 'package:flutter/material.dart';
import 'package:installment/core/helper/context_helper.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/routing/routers.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/auth/widget/custom_material_button.dart';
import 'package:installment/features/view_item/data/local_data.dart';
import 'package:installment/generated/l10n.dart';

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
            text: S.of(context).view_Item,
            onPressed: () {
              context.pushNamed(Routes.viewItem, arguments: itemModel[0]);
            },
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
