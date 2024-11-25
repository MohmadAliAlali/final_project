import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class TaskyButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  const TaskyButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 329,
    this.height = 50,
    this.color = TaskyColor.black2,
  });

  @override
  Widget build(BuildContext context) {
    return
    GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height.h,
        width: width.w,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8.r)
        ),
        child: child,
      ),
    );
  }
}