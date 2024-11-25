import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/cupertino.dart';

import '../core/constants/tasky_color.dart';

class TaskyProfileTaskNumber extends StatelessWidget {

  const TaskyProfileTaskNumber({required this.number,required this.text,super.key});
final String number;
final Text  text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskyIcons.timeSquare,
        Text(number,style: TextStyle(
          fontSize: 22.f,
          fontWeight: FontWeight.bold,
          color: TaskyColor.darkBlue,
        ),),
        text,
      ],
    );
  }
}
