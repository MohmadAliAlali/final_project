
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:flutter/material.dart';

import '../core/constans/tasky_color.dart';

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
      width: 135.w,

      paddingLeft: 10.w,
      paddingRight: 10.w,
      onPressed: () => _selectTime(context),
      child: Text(
        selectedTime == null ? "" : selectedTime!.format(context),
        style: TextStyle(
          fontFamily: 'Poppins-Regular',
          height: 24.h / 13.f,
          fontSize: 18.0.f,
          fontWeight: FontWeight.w500,
          color: TaskyColor.black1,
        ),
      ),
    );
  }
}
