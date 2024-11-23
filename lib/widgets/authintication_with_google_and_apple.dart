import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class AuthinticationWithGoogleAndApple extends StatelessWidget {
  const AuthinticationWithGoogleAndApple(
      {super.key,
      required this.text,
      this.textTopPadding,
      this.textLeftPadding,
      this.textRightPadding});
  final Text text;
  final double? textTopPadding;
  final double? textLeftPadding;
  final double? textRightPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: textTopPadding!.h,),
        Center(
          child: text,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 30.h, left: 113.w),
                height: 58.e,
                width: 60.e,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 1.w,
                    color: TaskyColor.gray5,
                  ),
                ),
                child: Center(
                  child:TaskyIcons.appleIcon,

                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 30.h, left: 30.w),
                height: 58.e,
                width: 60.e,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 1.w,
                    color: const Color(0xffDFDFDF),
                  ),
                ),
                child: Center(
                  child: TaskyIcons.googleIcon,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
