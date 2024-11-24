import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class TodayTaskyCalendar extends StatefulWidget {
  const TodayTaskyCalendar({super.key});

  @override
  State<TodayTaskyCalendar> createState() => _TodayTaskyCalendarState();
}

class _TodayTaskyCalendarState extends State<TodayTaskyCalendar> {
  Color containerColor = TaskyColor.white;
  bool active = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskyText(
              topPadding: 49.p.top,
              leftPadding: 24.p.left,
              text: 'October, 20  ✍',
              textStyle: TextStyle(
                  color: const Color(0xff002055),
                  fontSize: 25.f,
                  fontWeight: FontWeight.w600),
            ),
            TaskyText(
              leftPadding: 24.p.left,
              topPadding: 8.p.top,
              text: '15 task today',
              textStyle:
                  TextStyle(fontSize: 14.f, color: const Color(0xff848A94)),
            ),
          ],
        ),
        InkWell(
          onTap: () {
            setState(() {
              active = !active;
              containerColor =
                  active ? const Color(0xffFF8500) : TaskyColor.white;
            });
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child: Container(
            margin: EdgeInsets.only(top: 40.p.top, left: 120.w),
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
              border: Border.all(
                width: 1.w,
                color: const Color(0xffDFDFDF),
              ),
              shape: BoxShape.circle,
              color: containerColor,
            ),
            child: Center(
              child: active
                  ? TaskyIcons.unClickCalendar
                  : TaskyIcons.clickCalendar,
            ),
          ),
        ),
      ],
    );
  }
}
