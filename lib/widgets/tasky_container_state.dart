import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';

class TaskyContainerState extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final String text;
  const TaskyContainerState({
    super.key,
    required this.onPressed,
    required this.child,
    this.width = 327,
    this.height = 70,
    this.color = Colors.transparent,
    this.icon = Icons.arrow_forward_ios,
    this.text = 'create',
  });

  @override
  Widget build(BuildContext context) {
    return TaskyButtonRoot(
      onPressed: onPressed,
      width: width,
      height: height,
      color: color,
      paddingLeft: 20.w,
      paddingRight: 20.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Text(text),
           Text(text,style: TextStyle(fontSize: 10),),
          ],
          ),
          Icon(icon,size: 20.e,),
        ],
      ),
    );
  }
}
