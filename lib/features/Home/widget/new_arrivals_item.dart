import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';
import 'package:installment/features/Home/models/nowArrival.dart';

import 'new_arrivals_item_details.dart';
import 'new_arrivals_item_image.dart';

class NewArrivalsItem extends StatelessWidget {
  final NowArrivalModel data;
  const NewArrivalsItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(PH.r8),
        ),
        border: Border.all(
          color: AppColorManger.greyLighter,
          width: 1,
        ),
        color: AppColorManger.white,
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.topRight,
              children: [
                NewArrivalsItemImage(data: data),
                const CustomFavoritWidget()
              ],
            ),
            SizedBox(
              width: PH.w16,
            ),
            NewArrivalsItemDetails(data: data),
          ],
        ),
      ),
    );
  }
}

class CustomFavoritWidget extends StatelessWidget {
  const CustomFavoritWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColorManger.white,
      child: Icon(
        FontAwesomeIcons.heart,
        color: AppColorManger.primary,
      ),
    );
  }
}
