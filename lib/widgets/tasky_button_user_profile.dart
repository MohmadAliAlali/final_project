import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';

class TaskyButtonUserProfile extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final TextStyle? style;
  final Text text;
  const TaskyButtonUserProfile({
    super.key,
    required this.onPressed,
    required this.child,
    required this.text,
    this.width = 327,
    this.height = 56,
    this.color = Colors.transparent,
    this.icon = Icons.arrow_forward_ios,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return TaskyButtonRoot(
      onPressed: onPressed,
      width: width,
      height: height,
      color: color,
      paddingLeft: 20.w,
      paddingRight: 18.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          text,
          Icon(icon,size: 20.e,),
        ],
      ),
    );
  }
}
