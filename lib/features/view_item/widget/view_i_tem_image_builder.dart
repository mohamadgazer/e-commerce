import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/view_item/manger/cubit/view_item_cubit.dart';
import 'package:installment/features/view_item/models/item_model.dart';

import 'item_view.dart';
import 'view_item_page_view_dots.dart';
import 'view_item_side_image.dart';

class ViewITemImageBuilder extends StatefulWidget {
  const ViewITemImageBuilder({
    super.key,
    required this.itemModel,
  });

  final ItemModel itemModel;

  @override
  State<ViewITemImageBuilder> createState() => _ViewITemImageBuilderState();
}

class _ViewITemImageBuilderState extends State<ViewITemImageBuilder> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context).height;
    var screenSizeWidth = MediaQuery.sizeOf(context).width;
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.centerRight,
            children: [
              Center(
                child: SizedBox(
                  // width: screenSizeWidth / 2,
                  height: screenSize / 2.07,
                  child: PageView.builder(
                    controller:
                        BlocProvider.of<ViewItemCubit>(context).controller,
                    onPageChanged: (value) {
                      // BlocProvider.of<ViewItemCubit>(context).selected = value;
                      BlocProvider.of<ViewItemCubit>(context)
                          .updateSelected(value);

                      setState(() {});
                    },
                    physics: const BouncingScrollPhysics(),
                    itemCount: widget.itemModel.images.length,
                    itemBuilder: (context, index) {
                      return ItemView(image: widget.itemModel.images[index]);
                    },
                  ),
                ),
              ),
              ViewItemSideImage(
                widget: widget,
                controller: BlocProvider.of<ViewItemCubit>(context).controller,
                selected: BlocProvider.of<ViewItemCubit>(context).selected,
              ),
            ],
          ),
        ),
        SizedBox(height: PH.h25),
        ViewItemPageViewDots(
          widget: widget,
          selected: BlocProvider.of<ViewItemCubit>(context).selected,
        ),
      ],
    );
  }
}
