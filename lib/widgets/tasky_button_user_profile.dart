import 'package:final_project/core/services/respnsive.dart';
import 'package:final_project/widgets/tasky_button_add_page.dart';
import 'package:flutter/material.dart';

class TaskyButtonUserProfile extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final String text;
  const TaskyButtonUserProfile({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 327,
    this.height = 56,
    this.color = Colors.transparent,
    this.icon = Icons.arrow_forward_ios,
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
      paddingRight: 18.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(icon,size: 20.e,),


        ],
      ),
    );
  }
}
