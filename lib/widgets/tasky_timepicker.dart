
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';

import '../core/constants/tasky_color.dart';

class TaskyTimepicker extends StatefulWidget {
  final TimeOfDay? initialTime;

  const TaskyTimepicker({Key? key, this.initialTime}) : super(key: key);

  @override
  _TaskyTimepickerState createState() => _TaskyTimepickerState();
}

class _TaskyTimepickerState extends State<TaskyTimepicker> {
  TimeOfDay? selectedTime;

  @override
  void initState() {
    super.initState();
    selectedTime = widget.initialTime;
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: selectedTime ?? TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return TaskyButtonRoot(
      width: 148,
      height: 64,
      paddingLeft: 10,
      paddingRight: 10,
      onPressed: () => _selectTime(context),
      child: Text(
        selectedTime == null ? "" : selectedTime!.format(context),
        style: TaskyTextStyle.text18darkBlue600
      ),
    );
  }
}
