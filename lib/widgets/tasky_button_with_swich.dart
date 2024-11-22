import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class TaskyButtonWithSwitch extends StatefulWidget {
  final VoidCallback onPressed;
  final VoidCallback? onPressedSwitch;
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final Text text;

  const TaskyButtonWithSwitch({
    super.key,
    required this.onPressed,
    required this.text,
    this.width = 327,
    this.height = 56,
    this.color = Colors.transparent,
    this.icon = Icons.arrow_forward_ios,
    this.onPressedSwitch,

  });

  @override
  _TaskyButtonWithSwitchState createState() => _TaskyButtonWithSwitchState();
}

class _TaskyButtonWithSwitchState extends State<TaskyButtonWithSwitch> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return TaskyButtonRoot(
      onPressed: widget.onPressed,
      width: widget.width,
      height: widget.height,
      color: widget.color,
      paddingLeft: 20.w,
      paddingRight: 18.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.text,
        FlutterSwitch(
          value: isTrue,
          width: 35.0.w,
          height: 23.0.h,
          toggleSize: 17.e,
          padding: 3,
          activeColor: TaskyColor.orange,
          inactiveColor: TaskyColor.gray4,
          toggleColor: TaskyColor.white,
          borderRadius: 18.0.r,
          showOnOff: false,
          onToggle: (val) {
            setState(() {
              isTrue = val;
            });
            if(isTrue){
              widget.onPressedSwitch;
            }
          },

        )

        ],
      ),
    );
  }
}
