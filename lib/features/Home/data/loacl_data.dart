import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/features/Home/models/nowArrival.dart';
import 'package:installment/features/Home/models/workspaces.dart';
import 'package:installment/generated/l10n.dart';

List<WorkSpaces> workSpacesData(BuildContext context) {
  List<WorkSpaces> workSpacesData = [
    WorkSpaces(
      image: AppImageManger.homeW01,
      workSpace: S.of(context).developer,
      suggestedItem: 25,
      price: 300,
    ),
    WorkSpaces(
      image: AppImageManger.homeW02,
      workSpace: S.of(context).photographer,
      suggestedItem: 74,
      price: 330,
    ),
    WorkSpaces(
      image: AppImageManger.homeW03,
      workSpace: S.of(context).creative,
      suggestedItem: 61,
      price: 700,
    ),
    WorkSpaces(
      image: AppImageManger.homeW04,
      workSpace: S.of(context).marketer,
      suggestedItem: 33,
      price: 300,
    ),
    WorkSpaces(
      image: AppImageManger.homeW05,
      workSpace: S.of(context).youtuber,
      suggestedItem: 40,
      price: 250,
    ),
  ];

  return workSpacesData;
}

List<NowArrival> nowArrivalsData(BuildContext context) {
  List<NowArrival> nowArrivalsData = [
    NowArrival(
      image: AppImageManger.na01,
      name: "Smart Apple Watch SE",
      price: 429.0,
      space: "jodde Electronics",
      rate: 4.8,
    ),
    NowArrival(
      image: AppImageManger.na02,
      name: "Hp Laptop - 10th generation",
      price: 850.00,
      space: "Maddy Workspaces",
      rate: 4.6,
    ),
    NowArrival(
      image: AppImageManger.na03,
      name: "Logitech G433 Headset",
      price: 91.00,
      space: "Zone Electroncs",
      rate: 4.2,
    ),
    NowArrival(
      image: AppImageManger.na04,
      name: "Wooden Monitor Stand",
      price: 113.00,
      space: "Walnus Home",
      rate: 4.3,
    ),
  ];

  return nowArrivalsData;
}
