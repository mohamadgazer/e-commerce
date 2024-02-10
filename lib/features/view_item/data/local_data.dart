import 'package:installment/core/app_images_manger.dart';
import 'package:installment/features/view_item/models/item_model.dart';

List<ItemModel> itemModel = [
  ItemModel(
    images: [
      AppImageManger.vi01,
      AppImageManger.vi02,
      AppImageManger.vi03,
    ],
    itemPrice: 113,
    itemDiscountRate: 0.06,
    itemRate: 4.8,
    itemEnglish: "Hughlan Ergonomic Adjustable Office Chair",
    itemArabicName: "كرسي مكتب هيغلان مريح وقابل للتعديل",
    itemEnglishSpace: "Hughlan Workspaces",
    itemArabicSpace: "مساحة عمل هوغلان",
    itemEnglishDescription:
        "Hughlan ergonomic chair adopts an ergonomic design.This ergonomic desk chair can help you ease fatigue, reduce occupational disesase and let you develop good sitting posture habits",
    itemArabicDescription:
        "يعتمد كرسي هوغلان المريح على تصميم مريح. يمكن أن يساعدك كرسي المكتب المريح هذا على تخفيف التعب وتقليل الأمراض المهنية ويتيح لك تطوير عادات وضعية الجلوس الجيدة",
  ),
];
