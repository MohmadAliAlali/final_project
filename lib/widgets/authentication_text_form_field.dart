import 'package:final_project/core/services/media_query_util.dart';
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
        height: 60.h,
        child: TextFormField(
          obscureText: obscureText ?? false,
          validator: (value) => validation(value!),
          style: TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 16.w,
            color: const Color(0xff002055),
          ),
          controller: controller,
          keyboardType: textInputType,
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle:
                TextStyle(fontSize: 16.w, color: const Color(0xff868D95)),
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
              borderSide: const BorderSide(
                color: Color(0xff282828),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
