import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/respnsive.dart';
import 'package:final_project/widgets/tasky_text_field.dart';
import 'package:flutter/material.dart';

class TaskyTextFormFiledWithText extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String text;
  final Color color;
  final TextInputType keyboardType;
  final bool obscureText;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final String? errorMessage;
  final String? Function(String?)? validator;
  final double pt;
  final double pb;
  final double pl;
  final double pr;

  const TaskyTextFormFiledWithText({
    super.key,
    required this.controller,
    required this.hintText,
    required this.text,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.validator,
    this.color = TaskyColor.gray1,
    this.pt = 16,
    this.pb = 0,
    this.pl = 0,
    this.pr = 0,
    this.errorMessage,
  });

  @override
  TaskyTextFormFiledWithTextState createState() =>
      TaskyTextFormFiledWithTextState();
}

class TaskyTextFormFiledWithTextState
    extends State<TaskyTextFormFiledWithText> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(widget.text),
        TaskyTextField(
          controller: widget.controller,
          hintText: widget.hintText,
          text: widget.text,
          color: widget.color,
          errorMessage: widget.errorMessage,
          keyboardType: widget.keyboardType,
          obscureText: widget.obscureText,
          pb: widget.pb.h,
          pl: widget.pl.w,
          pr: widget.pr.w,
          prefixIcon: widget.prefixIcon,
          pt: widget.pt.h,
          suffixIcon: widget.suffixIcon,
          validator: widget.validator,
        )
      ],
    );
  }
}