import 'package:final_project/core/services/respnsive.dart';
import 'package:final_project/widgets/tasky_button_add_page.dart';
import 'package:flutter/material.dart';

class TaskyButtonAdd extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final String text;
  const TaskyButtonAdd({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 327,
    this.height = 56,
    this.color = Colors.transparent,
    this.icon = Icons.add_box_outlined,
    this.text = 'create',
  });

  @override
  Widget build(BuildContext context) {
    return TaskyButtonAddPage(
      onPressed: onPressed,
      width: width,
      height: height,
      color: color,
      paddingLeft: 20.w,
      child: Row(
        children: [
          Icon(icon),
          SizedBox(
            width: 12.w,
          ),
          Text(text)
        ],
      ),
    );

    GestureDetector(
      onTap: onPressed,
      child: Container(
        height: height.h,
        width: width.w,
        padding: EdgeInsets.only(left: 20.w),
        alignment: Alignment.centerLeft,
        decoration: BoxDecoration(
            color: color,
            border: Border.all(color: Color(0xffDFDFDF), width: 1.e),
            borderRadius: BorderRadius.circular(12.r)),
        child: Row(
          children: [
            Icon(icon),
            SizedBox(
              width: 12.w,
            ),
            Text(text)
          ],
        ),
      ),
    );
  }
}
