import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/constans/tasky_images.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';
import '../../core/constans/tasky_text.dart';
import '../../core/services/navigation.dart';
import '../../widgets/tasky_button_root.dart';
import '../../widgets/tasky_header.dart';
import '../../widgets/tasky_profile_task_number.dart';
import '../../widgets/tasky_svg.dart';
import '../nav_bar_page.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final List<Text> profiles = [
    TaskyText.profileMyProjects,
    TaskyText.profileJoinTeam,
    TaskyText.profileSettings,
    TaskyText.profileMyTask,
  ];

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
                Navigation.navigateTo(context, NavBarPage());
              },
              svgIconOne: TaskcySvg(
                  svgWidth: 20.w,
                  svgHeight: 20.h,
                  TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
              isbuttonTwoShow: false,
              isButtonText: false,
              isButtonContainer: true,
              istextShow: true,
              screenName: 'Profile',
              textLeftPadding: 104.w,
              textButtonOrContainerLeftPadding: 104.w,
            ),
            Expanded(
                child: Stack(alignment: Alignment.topCenter, children: [
              // Background Circle
              Positioned(
                child: Image(
                  image: AssetImage(TaskyImages.Circle3),
                  width: 200.w,
                  height: 200.h,
                ),
              ),

              // Profile Picture
              Positioned(
                  top: 50.h,
                  child: Column(children: [
                    Container(
                        width: 100.w,
                        height: 100.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            image: AssetImage(TaskyImages.profileUser4),
                            fit: BoxFit.cover,
                          ),
                        )),
                    Text(
                      "Alvart Ainstain",
                      style: TextStyle(
                        fontSize: 20.f,
                        fontWeight: FontWeight.bold,
                        color: TaskyColor.black1,
                      ),
                    ),
                    Text(
                      "@albart.ainstain",
                      style: TextStyle(
                        fontSize: 14.f,
                        color: TaskyColor.gray_2,
                      ),
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 28.h,
                        width: 54.w,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: TaskyColor.white,
                            border: Border.all(
                                color: TaskyColor.orange, width: 1.e),
                            borderRadius: BorderRadius.circular(8.r)),
                        child: TaskyText.profileEdit,
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TaskyProfileTaskNumber(
                            number: '5', text: TaskyText.profileOnGoing),
                        VerticalDivider(
                          width: 25.w,
                        ),
                        SizedBox(
                          height: 68.h,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: List.generate(
                              7,
                              (index) => Container(
                                width: 2.w,
                                height: 5.h,
                                color: TaskyColor.gray3,
                              ),
                            ),
                          ),
                        ),
                        VerticalDivider(
                          width: 25.w,
                        ),
                        TaskyProfileTaskNumber(
                            number: '25', text: TaskyText.profileTotalComplete),
                      ],
                    ),
                  ]))
            ])),
            SizedBox(
              height: 20.h,
            ),
            // List Section (Scrollable)
            Flexible(
              child: ListView.builder(
                itemCount: profiles.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) {
                  final profile = profiles[index];
                  return Column(
                    children: [
                      TaskyButtonRoot(
                        height: 56.h,
                        color: TaskyColor.white,
                        paddingLeft: 20.w,
                        onPressed: () {
                          switch (index) {
                            case 0:
                              //Navigation.navigateTo(context,LangaugeScreen());
                              break;
                            case 1:
                              //Navigation.navigateTo(context,LangaugeScreen());
                              break;
                            case 2:
                              //Navigation.navigateTo(context,LangaugeScreen());
                              break;
                            case 3:
                              //Navigation.navigateTo(context,LangaugeScreen());
                              break;
                            default:
                              break;
                          }
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            profile,
                            GestureDetector(
                              onTap: () {},
                              child: TaskyIcons.rightArrowIos,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
