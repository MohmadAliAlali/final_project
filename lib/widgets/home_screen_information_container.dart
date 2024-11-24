import 'package:carousel_slider/carousel_slider.dart';
import 'package:final_project/core/constans/tasky_images.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class HomeScreenInformationContainer extends StatefulWidget {
  const HomeScreenInformationContainer({super.key});

  @override
  State<HomeScreenInformationContainer> createState() =>
      _HomeScreenInformationContainerState();
}

class _HomeScreenInformationContainerState
    extends State<HomeScreenInformationContainer> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 30.h),
        CarouselSlider.builder(
          itemCount: 3,
          itemBuilder: (context, index, realIndex) {
            final isActive = index == currentIndex;

            return Container(
              margin: EdgeInsets.only(left: 8.w),
              width: 260.w,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.r),
                color: isActive ? Colors.black : Colors.white,
                border: isActive
                    ? null
                    : Border.all(
                        color: const Color(0xffEDF4FF),
                        width: 2.w,
                      ),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TaskyText(
                        topPadding: 26.h,
                        leftPadding: 23.w,
                        text: 'Application Design',
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.f,
                            color: isActive ? Colors.white : Colors.black),
                      ),
                      TaskyText(
                        leftPadding: 23.w,
                        text: 'UI Design Kit',
                        textStyle: TextStyle(
                            color: isActive ? Colors.white : Colors.black,
                            fontSize: 12.f,
                            fontWeight: FontWeight.w400),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 26.h, left: 25.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                Transform.translate(
                                  offset: Offset(0, 0),
                                  child: CircleAvatar(
                                    radius: 16.r,
                                    backgroundImage:
                                        AssetImage(TaskyImages.user3),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(24.w, 0),
                                  child: CircleAvatar(
                                    radius: 16.r,
                                    backgroundImage:
                                        AssetImage(TaskyImages.user4),
                                  ),
                                ),
                                Transform.translate(
                                  offset: Offset(48.w, 0),
                                  child: CircleAvatar(
                                    radius: 16.r,
                                    backgroundImage:
                                        AssetImage(TaskyImages.user8),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    TaskyText(
                                      leftPadding: 80.w,
                                      text: 'Progress',
                                      textStyle: TextStyle(
                                        color: Color(0xffC5DAFD),
                                        fontSize: 12.f,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                TaskyText(
                                  text: '50/80',
                                  textStyle: TextStyle(
                                    color: const Color(0xffFFFFFF),
                                    fontSize: 12.f,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  leftPadding: 27.p.left,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 118.p.top,
                    left: 134.p.left,
                    child: Container(
                      width: 63.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(2.5.r)),
                    ),
                  )
                ],
              ),
            );
          },
          options: CarouselOptions(
            height: 150.h,
            viewportFraction: 0.74,
            enlargeCenterPage: false,
            enableInfiniteScroll: true,
            autoPlay: false,
            initialPage: 0,
            padEnds: false,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndex = index;
              });
            },
          ),
        ),
      ],
    );
  }
}
