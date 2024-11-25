import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class AuthenticationValidationButton extends StatelessWidget {
  const AuthenticationValidationButton(
      {super.key,
      required this.buttonText,
      this.authFunction,
      this.topPadding});
  final String buttonText;
  final VoidCallback? authFunction;
  final double? topPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: topPadding ?? 0, left: 24.w, right: 24.w),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 327.w,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              gradient:  const LinearGradient(
                colors: [
                  TaskyColor.lightOrange,
                  TaskyColor.orange,
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      TaskyColor.orange.withOpacity(0.5), // شفافية الظل
                  blurRadius: 37.h,
                  spreadRadius: 2,
                  offset:  Offset(0, 15.h),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 48.h,
            width: 327.w,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.r),
                ),
                fixedSize: Size(327.w, 48.h),
                backgroundColor: TaskyColor.orange,
              ),
              onPressed: authFunction,
              child: Text(
                  buttonText,
                  style: TaskyTextStyle.text16white500
              ),
            ),
          )
        ],
      ),
    );
  }
}
