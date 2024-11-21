import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/respnsive.dart';
import 'package:flutter/material.dart';


class TaskyTextField extends StatefulWidget {
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

  const TaskyTextField({
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
    this.pt = 0,
    this.pb = 0,
    this.pl = 0,
    this.pr = 0,
    this.errorMessage,
  });

  @override
  TaskyTextFieldState createState() => TaskyTextFieldState();
}

class TaskyTextFieldState extends State<TaskyTextField> {
  bool _obscureText = true;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: widget.pt, left: widget.pl, right: widget.pr, bottom: widget.pb),
          child: SizedBox(
            height: 100.h,
            width: 329.0.w,
            child: TextFormField(
              controller: widget.controller,
              keyboardType: widget.keyboardType,
              obscureText: _obscureText,
              validator: widget.validator,
              style: TaskyTextStyle.text16Black400,
              decoration: InputDecoration(
                errorText: widget.errorMessage,
                errorStyle: TaskyTextStyle.text14blueLight400
                    .copyWith(color: Colors.red),
                helperText: ' ',
                helperStyle: TaskyTextStyle.text14blueLight400
                    .copyWith(color: Colors.red),
                contentPadding: EdgeInsets.symmetric(horizontal: 16.0.w, vertical: 16.0.h),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: widget.color),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: widget.color),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16.r),
                  borderSide: BorderSide(color: widget.color),
                ),
                hintText: widget.hintText,
                hintStyle: TaskyTextStyle.text16Gray400,
                prefixIcon: widget.prefixIcon != null
                    ? Icon(widget.prefixIcon, size: 25.0.e)
                    : null,
                prefixIconConstraints:BoxConstraints(
                  minHeight: 40.h,
                  minWidth: 40.w,
                ),
                suffixIconConstraints: BoxConstraints(
                  minHeight: 40.h,
                  minWidth: 40.w,
                ),
                suffixIcon: widget.suffixIcon != null
                    ? InkWell(
                        child: Icon(
                          _obscureText
                              ? Icons.visibility
                              : Icons.visibility_off,
                          size: 25.0.e,
                        ),
                        onTap: () {
                          setState(() {
                            _obscureText = !_obscureText;
                          });
                        },
                      )
                    : null,
              ),
            ),
          ),

    );
  }
}

