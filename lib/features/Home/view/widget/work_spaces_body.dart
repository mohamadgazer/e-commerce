import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/view/widget/head_line.dart';
import 'package:installment/generated/l10n.dart';

class WorkSpacesBody extends StatelessWidget {
  const WorkSpacesBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HeadLine(
          onTap: () {},
          text: S.of(context).workspaces,
        ),
        SizedBox(height: PH.h18),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                5,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(PH.r8),
                      ),
                      color: AppColorManger.whiteShade,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text("data"),
                          Text("Developer"),
                          Text("21 suggested item"),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
