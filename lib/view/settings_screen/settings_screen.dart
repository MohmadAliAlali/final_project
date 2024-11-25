import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_button_user_profile.dart';
import 'package:final_project/widgets/tasky_button_with_swich.dart';
import 'package:final_project/widgets/tasky_form_field.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/constants/tasky_color.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _switchLanguage = false;
  bool _switchPermissions = false;
  bool _switchHelp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body:SafeArea(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          TaskcyHeader(
            onPressed: (){
              Navigation.goBack(context);
            },
            svgIconOne: TaskcySvg(
                svgWidth: 20.w,
                svgHeight: 20.h,
                TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
            isbuttonTwoShow: false,
            isButtonText: true,
            isButtonContainer: false,
            istextShow: true,
            screenName: 'Settings',
            textLeftPadding: 91.w,
          ),
          SizedBox(height: 40.h),
          TaskyButtonWithSwitch(
            onPressed: () {  },
            text: TaskyText.settingsPermission,
          ),
          SizedBox(height: 22.h),
          TaskyButtonWithSwitch(
            onPressed: () {  },
            text: TaskyText.settingsPushNotification,
          ),
          SizedBox(height: 22.h),
          TaskyButtonWithSwitch(
            onPressed: () {  },
            text: TaskyText.settingsPushNotification,
          ),
          SizedBox(height: 22.h),
          TaskyButtonUserProfile(
            onPressed: () {
            },
            text:TaskyText.settingsSecurity ,),
          SizedBox(height: 22.h),
          TaskyButtonUserProfile(
            onPressed: () {
            },
            text:TaskyText.settingsHelp ,),
          SizedBox(height: 22.h),
          TaskyButtonUserProfile(
            onPressed: () {
            },
            text:TaskyText.settingsLanguage ,),
          SizedBox(height: 22.h),
          TaskyButtonUserProfile(
            onPressed: () {
            },
            text:TaskyText.settingsAboutApplication ,),
        ],
            ),
      ),
    );
  }
}
