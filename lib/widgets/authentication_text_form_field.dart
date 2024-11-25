import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class AuthenticationTextFormField extends StatelessWidget {
  const AuthenticationTextFormField({
    super.key,
    required this.controller,
    this.textInputType,
    required this.hintText,
    this.topPadding,
    this.leftPadding,
    this.rightPadding,
    required this.validation,
    this.obscureText,
  });

  final TextEditingController controller;
  final TextInputType? textInputType;
  final String hintText;
  final double? topPadding;
  final double? leftPadding;
  final double? rightPadding;
  final String? Function(String) validation;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: topPadding ?? 0,
        left: leftPadding ?? 0,
        right: rightPadding ?? 0,
      ),
      child: SizedBox(
        width: 327.w,
        height: 85.h,
        child: TextFormField(
          obscureText: obscureText ?? false,
          validator: (value) => validation(value!),
          style: TaskyTextStyle.text16darkBlue500,
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
            errorStyle: TaskyTextStyle.text14Orange500.copyWith(color: TaskyColor.red),
            helperText: '',
            helperStyle: TaskyTextStyle.text14Orange500.copyWith(color: TaskyColor.red),
            hintText: hintText,
            hintStyle:
                TaskyTextStyle.text16darkBlue500.copyWith(color: TaskyColor.grayText1),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                width: 1.w,
                color: const Color(0xffDFDFDF),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: Color(0xff282828),
              ),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: const BorderSide(
                color: Colors.red,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide:const   BorderSide(
                color: TaskyColor.gray0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
