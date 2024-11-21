import 'package:final_project/core/services/respnsive.dart';
import 'package:final_project/widgets/tasky_button_add_page.dart';
import 'package:flutter/material.dart';

class TaskyButtonWithSwitch extends StatefulWidget {
  final VoidCallback onPressed;
  final Widget child;
  final double width;
  final double height;
  final Color color;
  final IconData icon;
  final String text;

  const TaskyButtonWithSwitch({
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
  _TaskyButtonWithSwitchState createState() => _TaskyButtonWithSwitchState();
}

class _TaskyButtonWithSwitchState extends State<TaskyButtonWithSwitch> {
  bool isTrue = false;

  @override
  Widget build(BuildContext context) {
    return TaskyButtonAddPage(
      onPressed: widget.onPressed,
      width: widget.width,
      height: widget.height,
      color: widget.color,
      paddingLeft: 20.w,
      paddingRight: 0.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.text),
          Transform.scale(
            scale: 0.6.e, // Adjust size
            child: Switch(
              value: isTrue,
              // activeColor: Colors.orange,
              activeTrackColor: Colors.orange,
              onChanged: (value) {
                setState(() {
                  isTrue = value;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
