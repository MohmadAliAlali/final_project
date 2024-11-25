import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class TaskyButtonProfile extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  const TaskyButtonProfile({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 218,
    this.height = 48,
    this.color = Colors.orange,
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
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 4),
                  color: Color(0x6a000000),
                  blurRadius: 4,
                  spreadRadius: 0.3,
                  blurStyle: BlurStyle.normal
                ),
              ],
              color: color,
              borderRadius: BorderRadius.circular(12.r)
          ),
          child: child,
        ),
      );
  }
}