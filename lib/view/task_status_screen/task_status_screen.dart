import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_container_state.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class TaskStatusScreen extends StatefulWidget {
  const TaskStatusScreen({super.key});
  @override
  State<TaskStatusScreen> createState() => _TaskStatusScreenState();
}

class _TaskStatusScreenState extends State<TaskStatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            TaskcyHeader(
              onPressed: () {
                Navigator.pop(context);
              },
              svgIconOne: TaskcySvg(
                svgWidth: 20.w,
                svgHeight: 20.h,
                TaskcySvgLink: 'assets/icons/back_arrow_ios.svg',
              ),
              svgIconTwo: TaskcySvg(
                svgWidth: 20.w,
                svgHeight: 20.h,
                TaskcySvgLink: 'assets/icons/filter.svg',
              ),
              isButtonText: true,
              isButtonContainer: true,
              screenName: 'Task Status',
              textLeftPadding: 91,
              isbuttonTwoShow: true,
              istextShow: true,
            ),
            SizedBox(height: 20.h),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularPercentIndicator(
                        radius: 100.0.r,
                        lineWidth: 30.0,
                        percent: 1.0,
                        backgroundColor: TaskyColor.lightGreen,
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                      CircularPercentIndicator(
                        animation: true,
                        animationDuration: 1000,
                        radius: 100.0.r,
                        lineWidth: 30.0,
                        percent: 0.7,
                        progressColor: TaskyColor.purple2,
                        backgroundColor: TaskyColor.lightGreen,
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                      CircularPercentIndicator(
                        animation: true,
                        animationDuration: 1000,
                        radius: 100.0.r,
                        lineWidth: 30.0,
                        percent: 0.3,
                        progressColor: TaskyColor.orange,
                        backgroundColor: Colors.transparent,
                        circularStrokeCap: CircularStrokeCap.round,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('65%', style: TaskyTextStyle.text30darkBlue500),
                          const Text(
                            'completed',
                            style: TextStyle(
                                fontSize: 20, color: TaskyColor.black1),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.0.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        radius: 5.r,
                        backgroundColor: TaskyColor.lightGreen,
                      ),
                      SizedBox(width: 5.w),
                      const Text('To Do'),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 5,
                        backgroundColor: TaskyColor.orange,
                      ),
                      SizedBox(width: 5.w),
                      const Text('In Progress'),
                    ],
                  ),
                  Row(
                    children: [
                      const CircleAvatar(
                        radius: 5,
                        backgroundColor: TaskyColor.purple2,
                      ),
                      SizedBox(width: 5.w),
                      const Text('Completed'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text('Monthly', style: TaskyTextStyle.text18darkBlue600),
              ),
            ),
            SizedBox(height: 20.h),
            const TaskList(),
          ],
        ),
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  const TaskList({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskyContainerState(
          onPressed: () {},
          onPressedMore: () {},
          description: TaskyText.taskStatusCompleted1,
          title: TaskyText.taskStatusCompleted2,
        ),
        SizedBox(height: 20.h),
        TaskyContainerState(
          onPressed: () {},
          onPressedMore: () {},
          description: TaskyText.taskStatusInProgress1,
          title: TaskyText.taskStatusInProgress2,
        ),
        SizedBox(height: 20.h),
        TaskyContainerState(
            onPressed: () {},
            onPressedMore: () {},
            description: TaskyText.taskStatusToDo1,
            title: TaskyText.taskStatusToDo2)
      ],
    );
  }
}
