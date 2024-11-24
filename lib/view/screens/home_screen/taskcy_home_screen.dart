import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/home_screen_information_container.dart';
import 'package:final_project/widgets/in_progress_home_screen.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class TaskcyHomeScreen extends StatelessWidget {
  const TaskcyHomeScreen({super.key});

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
                  textButtonOrContainerLeftPadding: 77.w,
                  svgIconOne: TaskyIcons.category,
                  svgIconTwo: TaskyIcons.notification,
                  textLeftPadding: 79.w,
                  isbuttonTwoShow: true,
                  isButtonText: false,
                  isButtonContainer: true,
                  istextShow: true,
                  screenName: 'Friday, 26',
                  onPressed: () {}),
              TaskyText(
                text: 'Let’s make a ',
                textStyle: TextStyle(
                    color: const Color(0xff002055),
                    fontWeight: FontWeight.w600,
                    fontSize: 25.f),
                topPadding: 30.p.top,
                leftPadding: 24.p.left,
              ),
              TaskyText(
                  leftPadding: 24.w,
                  textStyle: TextStyle(
                      color: const Color(0xff002055),
                      fontWeight: FontWeight.w600,
                      fontSize: 25.f),
                  text: 'habits together  🙌'),
              const HomeScreenInformationContainer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TaskyText(
                    text: 'In Progress',
                    textStyle: TextStyle(
                        fontSize: 18.f,
                        fontWeight: FontWeight.w600,
                        color: const Color(0xff282828)),
                    leftPadding: 24.p.left,
                    topPadding: 33.p.top,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.p.top, left: 201.w),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.arrow_back_ios,
                        size: 24.w,
                        color: Colors.orange,
                        textDirection: TextDirection.rtl,
                      ),
                    ),
                  ),
                ],
              ),
              const InProgressHomeScreen()
            ],
          ),
        ),
      ),
    );
  }
}
