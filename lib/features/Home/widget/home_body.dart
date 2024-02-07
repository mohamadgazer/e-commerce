import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/features/Home/widget/collections_body.dart';
import 'package:installment/features/Home/widget/laptop_body.dart';
import 'package:installment/features/Home/widget/new_arrivals.dart';
import 'package:installment/features/auth/widget/body_template.dart';

import 'popular_stack.dart';
import 'top_home_body.dart';
import 'work_spaces_body.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BodyTemplate(
      children: [
        const TopHomeBody(),
        SizedBox(height: 40.h),
        const PopularStack(),
        SizedBox(height: 40.h),
        const WorkSpacesBody(),
        SizedBox(height: 40.h),
        const NewArrivals(),
        SizedBox(height: 40.h),
        const LaptopBody(),
        SizedBox(height: 40.h),
        const CollectionsBody(),
      ],
    );
  }
}
