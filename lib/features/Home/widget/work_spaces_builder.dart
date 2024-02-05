import 'package:flutter/material.dart';

import 'work_spaces_item.dart';

class WorkSpacesBuilder extends StatelessWidget {
  const WorkSpacesBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            5,
            (index) => const Padding(
              padding: EdgeInsets.all(8.0),
              child: WorkSpacesItem(),
            ),
          ),
        ],
      ),
    );
  }
}
