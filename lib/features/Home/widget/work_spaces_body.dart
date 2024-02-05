import 'package:flutter/material.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/features/Home/widget/head_line.dart';
import 'package:installment/generated/l10n.dart';

import 'work_spaces_builder.dart';

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
        const WorkSpacesBuilder()
      ],
    );
  }
}
