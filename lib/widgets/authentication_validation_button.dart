import 'package:final_project/core/services/media_query_util.dart';
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
          top: topPadding ?? 0, left: 24.p.left, right: 24.p.right),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 327.w,
            height: 48.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              gradient: const LinearGradient(
                colors: [
                  Color(0xFFFFC07B),
                  Color(0xFFFF8500),
                ],
              ),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color(0xFFFF8500).withOpacity(0.5), // شفافية الظل
                  blurRadius: 37.h,
                  spreadRadius: 2,
                  offset: const Offset(0, 15),
                ),
              ],
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
              fixedSize: Size(327.w, 48.h),
              backgroundColor: const Color(0xffFF8500),
            ),
            onPressed: authFunction,
            child: Text(
              buttonText,
              style: TextStyle(
                fontSize: 16.f,
                fontWeight: FontWeight.w500,
                color: const Color(0xffFFFFFF),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
