import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/generated/l10n.dart';

class OnBoardingModel {
  final String text;
  final String image;

  OnBoardingModel({required this.text, required this.image});
}

List<OnBoardingModel> onboardingData(BuildContext context) {
  List<OnBoardingModel> onboardingData = [
    OnBoardingModel(
        text: S.of(context).smooth_customer_data_entry_and_search,
        image: AppImageManger.onboarding_3),
    OnBoardingModel(
        text: S.of(context).esayCollectmony,
        image: AppImageManger.onboarding_1),
    OnBoardingModel(
        text: S.of(context).get_notifications_of_collection_dates,
        image: AppImageManger.onboarding_2),
  ];
  return onboardingData;
}
