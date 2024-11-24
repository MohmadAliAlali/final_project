import 'package:final_project/core/constans/const_data.dart';
import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class TaskyTodayTimer extends StatefulWidget {
  const TaskyTodayTimer({super.key});

  @override
  State<TaskyTodayTimer> createState() => _TaskyTodayTimerState();
}

class _TaskyTodayTimerState extends State<TaskyTodayTimer> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 30.p.top, left: 24.w, right: 16.w),
      child: SizedBox(
        height: 118.h,
        child: ListView.builder(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemCount: ConstData.taskyTodayCalender.length,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {
                setState(() {
                  if (selectedIndex == index) {
                    selectedIndex = null;
                  } else {
                    selectedIndex = index;
                  }
                });
              },
              child: Container(
                margin: EdgeInsets.only(left: index == 0 ? 0 : 8.w),
                width: 64.w,
                height: 118.h,
                decoration: BoxDecoration(
                  color:
                      selectedIndex == index ? Colors.orange : TaskyColor.white,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 2.w,
                    color: const Color(0xffDFDFDF),
                  ),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        ConstData.taskyTodayCalender.keys
                            .elementAt(index)
                            .toString(),
                        style: TextStyle(
                            fontSize: 25.f,
                            fontWeight: FontWeight.w500,
                            color: selectedIndex == index
                                ? Colors.white
                                : const Color(0xff848A94)),
                      ),
                      Text(
                        ConstData.taskyTodayCalender.values.elementAt(index),
                        style: TextStyle(
                          fontSize: 14.f,
                          fontWeight: FontWeight.w500,
                          color: selectedIndex == index
                              ? Colors.white
                              : const Color(0xff848A94),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
