import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/nav_bar_page.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_today_time_mangmment.dart';
import 'package:final_project/widgets/tasky_today_timer.dart';
import 'package:final_project/widgets/today_tasky_calendar.dart';
import 'package:flutter/material.dart';

class TodayTaskyScreen extends StatefulWidget {
  const TodayTaskyScreen({super.key});

  @override
  State<TodayTaskyScreen> createState() => _TodayTaskyScreenState();
}

class _TodayTaskyScreenState extends State<TodayTaskyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskcyHeader(
                onPressed: () {
                  Navigation.navigateTo(context, const NavBarPage());
                },
                svgIconOne: TaskyIcons.backArrowIos,
                textButtonOrContainerLeftPadding: 93.p.left,
                isbuttonTwoShow: true,
                isButtonText: false,
                isButtonContainer: true,
                istextShow: true,
                screenName: 'Today Task',
                svgIconTwo: TaskyIcons.edit,
                textLeftPadding: 70.p.left,
              ),
              const TodayTaskyCalendar(),
              const TaskyTodayTimer(),
              const TaskyTodayTimeMangmment(),
            ],
          ),
        ),
      ),
    );
  }
}
