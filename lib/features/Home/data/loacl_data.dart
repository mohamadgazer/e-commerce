import 'package:flutter/material.dart';
import 'package:installment/core/app_images_manger.dart';
import 'package:installment/features/Home/models/workspaces.dart';
import 'package:installment/generated/l10n.dart';

List<WorkSpaces> workSpacesData(BuildContext context) {
  List<WorkSpaces> workSpacesData = [
    WorkSpaces(
        image: AppImageManger.homeW01,
        workSpace: S.of(context).developer,
        suggestedItem: 25),
    WorkSpaces(
        image: AppImageManger.homeW02,
        workSpace: S.of(context).photographer,
        suggestedItem: 74),
    WorkSpaces(
        image: AppImageManger.homeW03,
        workSpace: S.of(context).creative,
        suggestedItem: 61),
    WorkSpaces(
        image: AppImageManger.homeW04,
        workSpace: S.of(context).marketer,
        suggestedItem: 33),
    WorkSpaces(
        image: AppImageManger.homeW05,
        workSpace: S.of(context).youtuber,
        suggestedItem: 40),
  ];

  return workSpacesData;
}
