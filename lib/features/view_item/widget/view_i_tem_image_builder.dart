import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
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
  int selected = 1;
  final PageController? controller = PageController(initialPage: 0);
  @override
  void initState() {
    super.initState();
  }

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
                    controller: controller,
                    onPageChanged: (value) {
                      selected = value;
                      print(selected);
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
                controller: controller,
                selected: selected,
              ),
            ],
          ),
        ),
        SizedBox(height: PH.h25),
        ViewItemPageViewDots(widget: widget, selected: selected)
      ],
    );
  }
}
