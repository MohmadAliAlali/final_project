import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/edit_profile_screen/edit_profile_screen.dart';
import 'package:final_project/view/settings_screen/settings_screen.dart';
import 'package:final_project/view/task_status_screen/task_status_screen.dart';
import 'package:final_project/widgets/tasky_button_user_profile.dart';
import 'package:flutter/material.dart';
import '../../core/constants/tasky_text.dart';
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
            SizedBox(
                height: 208.h,
                width: 375.w,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Positioned(
                    top: 0.h,
                    left: 0.w,
                    child: TaskcyHeader(
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
                      textLeftPadding: 93.w,
                      textButtonOrContainerLeftPadding: 104.w,
                    ),
                  ),
                  Positioned(
                    top: 43.h,
                    right: 46.w,
                    child: Image(
                      image: AssetImage(TaskyImages.Circle3),
                      width: 263.w,
                      height: 94.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  // Profile Picture
                  Positioned(
                      top: 88.h,
                      child: Column(children: [
                        CircleAvatar(
                          radius: 50.0
                              .r, // Adjust the radius as needed (half of width/height for 100x100 Container).
                          backgroundImage: AssetImage(TaskyImages.user4),
                          backgroundColor: Colors
                              .transparent, // Optional, in case there's no image.
                        )
                      ]))
                ])),
            SizedBox(
              height: 20.h,
            ),
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
              onTap: () {
                Navigation.navigateTo(context, const EditProfileScreen());
              },
              child: Container(
                height: 28.h,
                width: 54.w,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: TaskyColor.white,
                    border: Border.all(color: TaskyColor.orange, width: 1.e),
                    borderRadius: BorderRadius.circular(8.r)),
                child: TaskyText.profileEdit,
              ),
            ),
            SizedBox(
              height: 28.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 105.w,
                ),
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
            SizedBox(
              height: 37.h,
            ),
            Flexible(
              child: ListView.builder(
                itemCount: profiles.length,
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                itemBuilder: (context, index) {
                  final profile = profiles[index];
                  return Column(
                    children: [
                      TaskyButtonUserProfile(
                        color: TaskyColor.white,
                        onPressed: () {
                          switch (index) {
                            case 0:
                              //Navigation.navigateTo(context,LangaugeScreen());
                              break;
                            case 1:
                              //Navigation.navigateTo(context,LangaugeScreen());
                              break;
                            case 2:
                              Navigation.navigateTo(context,const SettingPage());
                              break;
                            case 3:
                              Navigation.navigateTo(
                                  context, const TaskStatusScreen());
                              break;
                            default:
                              break;
                          }
                        },
                        text: profile,
                      ),
                      SizedBox(height: 16.h),
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
