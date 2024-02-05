import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:installment/core/padding_helper.dart';
import 'package:installment/core/theming/app_color.dart';

class HomeLoginButton extends StatelessWidget {
  final String text;
  final String icon;
  final void Function()? onTap;
  const HomeLoginButton({
    super.key,
    required this.text,
    required this.icon,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.all(Radius.circular(PH.borderReduoc8)),
              border: Border.all(color: AppColorManger.greyDeep)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: 30.w),
                Image.asset(icon),
                SizedBox(width: 50.w),
                Center(child: Text(text, textAlign: TextAlign.center)),
                SizedBox(width: 30.w),
              ],
            ),
          )),
    );
  }
}
// class HomeLoginButton extends StatelessWidget {
//   final String text;
//   final String icon;
//   final void Function()? onTap;
//   const HomeLoginButton({
//     super.key,
//     required this.text,
//     required this.icon,
//     this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         decoration: BoxDecoration(
//             shape: BoxShape.rectangle,
//             borderRadius:
//                 BorderRadius.all(Radius.circular(PaddingHelper.borderReduoc)),
//             border: Border.all(color: AppColorManger.greyDeep)),
//         child: ListTile(
//           title: Text(
//             text,
            
//           ),
//           leading: Image.asset(icon),
//         ),
//       ),
//     );
//   }
// }
