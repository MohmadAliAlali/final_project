import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskyButtonAdd extends StatelessWidget {
  final VoidCallback onPressed;
  final double width;
  final double height;
  final Color color;
  final SvgPicture icon;
  final Text text;
  const TaskyButtonAdd({
    super.key,
    required this.onPressed,
    required this.icon ,
    required this.text ,
    this.width = 327,
    this.height = 56,
    this.color = Colors.transparent,

  });

  @override
  Widget build(BuildContext context) {
    return TaskyButtonRoot(
      onPressed: onPressed,
      width: width,
      height: height,
      color: color,
      paddingLeft: 20.w,
      child: Row(
        children: [
          icon,
          SizedBox(
            width: 12.w,
          ),
          text
        ],
      ),
    );
  }
}
