import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/features/Home/models/colection_model.dart';
import 'package:installment/features/Home/models/laptop.dart';
import 'package:installment/features/Home/models/now_Arrival.dart';
import 'package:installment/features/Home/models/workspaces.dart';
import 'package:installment/generated/l10n.dart';

List<WorkSpacesModel> workSpacesData(BuildContext context) {
  List<WorkSpacesModel> workSpacesData = [
    WorkSpacesModel(
      image: AppImageManger.homeW01,
      workSpace: S.of(context).developer,
      suggestedItem: 25,
      price: 300,
    ),
    WorkSpacesModel(
      image: AppImageManger.homeW02,
      workSpace: S.of(context).photographer,
      suggestedItem: 74,
      price: 330,
    ),
    WorkSpacesModel(
      image: AppImageManger.homeW03,
      workSpace: S.of(context).creative,
      suggestedItem: 61,
      price: 700,
    ),
    WorkSpacesModel(
      image: AppImageManger.homeW04,
      workSpace: S.of(context).marketer,
      suggestedItem: 33,
      price: 300,
    ),
    WorkSpacesModel(
      image: AppImageManger.homeW05,
      workSpace: S.of(context).youtuber,
      suggestedItem: 40,
      price: 250,
    ),
  ];

  return workSpacesData;
}

List<NowArrivalModel> nowArrivalsData(BuildContext context) {
  List<NowArrivalModel> nowArrivalsData = [
    NowArrivalModel(
      image: AppImageManger.na01,
      name: "Smart Apple Watch SE",
      price: 429,
      space: "jodde Electronics",
      rate: 4.8,
    ),
    NowArrivalModel(
      image: AppImageManger.na02,
      name: "Hp Laptop - 10th generation",
      price: 850,
      space: "Maddy Workspaces",
      rate: 4.6,
    ),
    NowArrivalModel(
      image: AppImageManger.na03,
      name: "Logitech G433 Headset",
      price: 91,
      space: "Zone Electroncs",
      rate: 4.2,
    ),
    NowArrivalModel(
      image: AppImageManger.na04,
      name: "Wooden Monitor Stand",
      price: 113,
      space: "Walnus Home",
      rate: 4.3,
    ),
  ];

  return nowArrivalsData;
}

List<LaptopModel> laptopData(BuildContext context) {
  List<LaptopModel> laptopData = [
    LaptopModel(
      name: "Apple MacBook Pro 16 inch",
      price: 15000,
      rate: 4.3,
      image: AppImageManger.lt01,
    ),
    LaptopModel(
      name: "Microsoft Surface Laptop 4",
      price: 2500,
      rate: 4.7,
      image: AppImageManger.lt02,
    ),
    LaptopModel(
      name: "HP Laptop 8th Gen Core i3",
      price: 3000,
      rate: 4.5,
      image: AppImageManger.lt03,
    ),
    LaptopModel(
      name: "Dell Inspiron 3583 Core I5",
      price: 600000,
      rate: 4.9,
      image: AppImageManger.lt04,
    ),
  ];

  return laptopData;
}

List<CollectionModel> collectionModelData(BuildContext context) {
  List<CollectionModel> collectionModelData = [
    CollectionModel(
      name: "Smart Watch",
      image: AppImageManger.nc01,
    ),
    CollectionModel(
      name: "Headsets",
      image: AppImageManger.nc02,
    ),
    CollectionModel(
      name: "Ergonomic Chair",
      image: AppImageManger.nc03,
    ),
    CollectionModel(
      name: "Apple iPads",
      image: AppImageManger.nc04,
    ),
    CollectionModel(
      name: "Desk Lamps",
      image: AppImageManger.nc05,
    ),
  ];

  return collectionModelData;
}
