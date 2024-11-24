import 'package:flutter/material.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class InProgressHomeScreen extends StatelessWidget {
  const InProgressHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> inProgressData = [
      {
        "title": "Productivity Mobile App",
        "subtitle": "Create Detail Booking",
        "time": "2 min ago",
        "progress": "60%"
      },
      {
        "title": "Banking Mobile App",
        "subtitle": "Revision Home Page",
        "time": "5 min ago",
        "progress": "70%"
      },
      {
        "title": "Online Course",
        "subtitle": "Working On Landing Page",
        "time": "7 min ago",
        "progress": "80%"
      },
    ];

    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: inProgressData.length,
      itemBuilder: (context, index) {
        final item = inProgressData[index];
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 8.h),
          child: Container(
            width: 327.w,
            height: 80.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.r),
              border: Border.all(width: 1.w, color: const Color(0xffFFD5A7)),
            ),
            child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15.w),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TaskyText(
                          text: item["title"]!, // العنوان
                          textStyle: TextStyle(
                            color: const Color(0xff848A94),
                            fontWeight: FontWeight.w400,
                            fontSize: 12.f,
                          ),
                        ),
                        TaskyText(
                          text: item["subtitle"]!,
                          textStyle: TextStyle(
                            color: const Color(0xff282828),
                            fontWeight: FontWeight.w500,
                            fontSize: 14.f,
                          ),
                        ),
                        TaskyText(
                          text: item["time"]!,
                          textStyle: TextStyle(
                            color: const Color(0xff848A94),
                            fontWeight: FontWeight.w500,
                            fontSize: 12.f,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(
                      right: 15.w,
                    ),
                    child: CircularPercentIndicator(
                      radius: 22.r,
                      lineWidth: 5.w,
                      percent:
                          int.parse(item["progress"]!.replaceAll('%', '')) /
                              100,
                      center: Text(
                        item["progress"]!,
                        style: TextStyle(
                          fontSize: 12.f,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      backgroundColor: const Color(0xffFFC07B),
                      progressColor: const Color(0xffFF8500),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
