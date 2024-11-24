import 'package:final_project/core/constans/tasky_images.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:final_project/widgets/today_tasky_time_mangmment_container.dart';
import 'package:flutter/material.dart';

class TaskyTodayTimeMangmment extends StatelessWidget {
  const TaskyTodayTimeMangmment({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 30.p.top),
            child: Divider(
              endIndent: 24.p.right,
              indent: 24.p.left,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // الحاوية الأولى
              TaskyText(
                leftPadding: 24.p.left,
                topPadding: 30.p.top,
                text: '10 am',
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.f,
                    color: const Color(0xff002055)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 24.p.left,
                      thickness: 1.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24.p.right),
                    child: TodayTaskyTimeMangmmentContainer(
                      rowWidgets: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.w),
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(TaskyImages.user3),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(TaskyImages.user4),
                              ),
                            ),
                            TaskyText(
                              leftPadding: 150.p.left,
                              text: '10am - 11am', // النص المكرر هنا
                              textStyle: TextStyle(
                                  fontSize: 11.f,
                                  color: const Color(0xffD8ECFF)),
                            )
                          ],
                        ),
                      ],
                      containerColor: Colors.blue,
                      textOne: 'Wareframe elements ☺',
                    ),
                  ),
                ],
              ),
              // الحاوية الثانية
              TaskyText(
                leftPadding: 24.p.left,
                text: '11 am',
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.f,
                    color: const Color(0xff002055)),
              ),
              Stack(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 93.p.top),
                      child: Divider(
                        indent: 24.w,
                      )),
                  Padding(
                    padding: EdgeInsets.only(top: 30.p.top),
                    child: Divider(
                      indent: 24.p.left,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        TaskyText(
                          leftPadding: 24.p.left,
                          topPadding: 30.p.top,
                          text: '12 pm',
                          textStyle: TextStyle(
                              fontSize: 15.f,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff002055)),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 27.h, left: 79.p.left),
                          child: TodayTaskyTimeMangmmentContainer(
                            containerColor:
                                const Color.fromARGB(255, 153, 207, 181),
                            textOne: 'Mobile app Design 😍',
                            rowWidgets: [
                              Stack(
                                alignment: Alignment.centerLeft,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(left: 0.w),
                                    child: CircleAvatar(
                                      radius: 12.r,
                                      backgroundImage:
                                          AssetImage(TaskyImages.user3),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 15.w),
                                    child: CircleAvatar(
                                      radius: 12.r,
                                      backgroundImage:
                                          AssetImage(TaskyImages.user4),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 30.w),
                                    child: CircleAvatar(
                                      radius: 12.r,
                                      backgroundImage:
                                          AssetImage(TaskyImages.user8),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(top: 5.h, left: 58.w),
                                child: TaskyText(
                                  text: '11:40am - 12:40pm',
                                  textStyle: TextStyle(
                                    fontSize: 11.f,
                                    color: const Color(0xffD8ECFF),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              // الحاوية الأخيرة
              TaskyText(
                topPadding: 10,
                leftPadding: 24.p.left,
                text: '01 pm',
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15.f,
                    color: const Color(0xff002055)),
              ),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      indent: 24.p.left,
                      thickness: 1.5,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 24.p.right),
                    child: TodayTaskyTimeMangmmentContainer(
                      rowWidgets: [
                        Stack(
                          alignment: Alignment.centerLeft,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 0.w),
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(TaskyImages.user3),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 15.w),
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(TaskyImages.user4),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 30.w),
                              child: CircleAvatar(
                                radius: 12.r,
                                backgroundImage: AssetImage(TaskyImages.user8),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 45.w),
                              child: CircleAvatar(
                                radius: 12.r,
                                child: Text(
                                  "+5",
                                  style: TextStyle(
                                    fontSize: 11.f,
                                    color: Colors.white,
                                  ),
                                ),
                                backgroundColor: const Color(0xffFFD7A9),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.h, left: 36.w),
                          child: TaskyText(
                            text: '01:20pm - 02:20pm',
                            textStyle: TextStyle(
                              fontSize: 11.f,
                              color: const Color(0xffD8ECFF),
                            ),
                          ),
                        ),
                      ],
                      containerColor: const Color.fromARGB(255, 253, 176, 88),
                      textOne: 'Design Team call 🤗',
                    ),
                  ),
                ],
              ),
              TaskyText(
                text: '02 pm',
                topPadding: 5.p.top,
                leftPadding: 24.p.left,
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff002055)),
              )
            ],
          )
        ],
      ),
    );
  }
}
