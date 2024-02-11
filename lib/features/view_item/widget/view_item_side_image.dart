import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/view_item/widget/view_i_tem_image_builder.dart';

class ViewItemSideImage extends StatelessWidget {
  const ViewItemSideImage({
    super.key,
    required this.widget,
    required this.controller,
    required this.selected,
  });

  final ViewITemImageBuilder widget;
  final PageController? controller;
  final int selected;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: -35,
      child: SizedBox(
        // height: 100,
        width: 100,
        child: Wrap(
          spacing: 8.0, // تحديد المسافة بين العناصر
          runSpacing: 8.0, // تحديد المسافة بين الصفوف
          children: List.generate(
            widget.itemModel.images.length,
            (index) => GestureDetector(
              onTap: () {
                controller?.animateToPage(index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn);
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(PH.r8),
                    border: Border.all(
                        color: selected == index
                            ? AppColorManger.secondary
                            : Colors.transparent)),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColorManger.customBlack2,
                    border: Border.all(color: AppColorManger.white, width: 4),
                    borderRadius: BorderRadius.circular(PH.r8),
                  ),
                  width: 65.w, // تحديد عرض العنصر
                  height: 67.h, // تحديد ارتفاع العنصر

                  child: Image.asset(widget.itemModel.images[index]),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
