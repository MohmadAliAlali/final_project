import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';

class TaskyContainerState extends StatelessWidget {
  final VoidCallback onPressed;
  final VoidCallback onPressedMore;
  final Text description;
  final Text title;
  final double width;
  final double height;
  final Color color;
  final IconData icon;


  const TaskyContainerState({
    super.key,
    required this.onPressed,
    required this.onPressedMore,
    required this.description,
    required this.title ,
    this.width = 327,
    this.height = 70,
    this.color = Colors.transparent,
    this.icon = Icons.arrow_forward_ios,

    
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           title,
           SizedBox(height: 8.h,),
           description,
          ],
          ),
          InkWell(
            onTap: onPressedMore,
            child: TaskyIcons.more,
          )
        ],
      ),
    );
  }
}
