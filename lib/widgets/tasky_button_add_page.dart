import 'package:final_project/core/services/respnsive.dart';
import 'package:flutter/material.dart';

class TaskyButtonAddPage extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final double paddingLeft ;
  final double paddingRight ;
  final double paddingTop ;
  final double paddingBottom ;
  const TaskyButtonAddPage({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 327,
    this.height = 56,
    this.color = Colors.transparent,
    this.paddingLeft = 0,
    this.paddingRight = 0,
    this.paddingTop = 0,
    this.paddingBottom = 0,


  });

  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: onPressed,
        child: Container(
          height: height.h,
          width: width.w,
          padding: EdgeInsets.fromLTRB(paddingLeft.w,paddingTop.h,paddingRight.w,paddingBottom.h),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: color,
              border: Border.all(color: Color(0xffDFDFDF),width: 1.e),
              borderRadius: BorderRadius.circular(12.r)
          ),
          child: child,
        ),
      );
  }
}