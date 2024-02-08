import 'package:flutter/material.dart';
import 'package:installment/features/Home/data/loacl_data.dart';
import 'package:installment/features/Home/models/now_arrival.dart';
import 'package:installment/features/Home/widget/new_arrivals_item.dart';

class NewArrivalsBuilder extends StatelessWidget {
  const NewArrivalsBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<NowArrivalModel> list = nowArrivalsData(context);
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ...List.generate(
            list.length,
            (index) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: NewArrivalsItem(
                data: list[index],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
