import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/view_item/widget/view_i_tem_image_builder.dart';

class ViewItemPageViewDots extends StatelessWidget {
  const ViewItemPageViewDots({
    super.key,
    required this.widget,
    required this.selected,
  });

  final ViewITemImageBuilder widget;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ...List.generate(
          widget.itemModel.images.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Container(
              width: PH.w10,
              height: PH.h10,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(PH.r32),
                color: selected == index
                    ? AppColorManger.primary
                    : AppColorManger.greyDeep,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
