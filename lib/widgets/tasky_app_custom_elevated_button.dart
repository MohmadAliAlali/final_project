import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:flutter/material.dart';

class TaskyAppCustomElevatedButton extends StatelessWidget {
  const TaskyAppCustomElevatedButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: TaskyColor.orange,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: () {},
      child: Text("Create Team", style: TaskyTextStyle.taskyAppButtonTextStyle),
    );
  }
}
