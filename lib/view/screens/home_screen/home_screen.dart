import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/screens/langauge_screen/langauge_screen.dart';
import 'package:final_project/view/screens/today_tasky_screen/today_tasky_screen.dart';
import 'package:final_project/widgets/tasky_button_user_profile.dart';
import 'package:final_project/widgets/tasky_button_with_swich.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_text_form_filed_with_text.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TaskcyHeader(
                  onPressed: () {},
                  isbuttonTwoShow: true,
                  isButtonText: true,
                  isButtonContainer: true,
                  istextShow: true,
                  screenName: 'title',
                  textLeftPadding: 50.w,
                  textButtonOrContainerLeftPadding: 50.w,
                  svgIconOne: TaskyIcons.backArrowIos),
              TaskyButtonUserProfile(
                onPressed: () {
                  Navigation.navigateTo(context, const LangaugeScreen());
                },
                text: TaskyTexts.profileMyProjects,
              ),
              const SizedBox(
                height: 20,
              ),
              TaskyButtonWithSwitch(
                onPressed: () {},
                onPressedSwitch: () {
                  Navigation.navigateTo(context, LangaugeScreen());
                },
                text: TaskyTexts.settingsPermission,
              ),
              const SizedBox(height: 20),

              TaskyTextFormFiledWithText(
                controller: _controller,
                hintText: 'hello world',
                prefixIcon: TaskyIcons.search,
                width: 200,
                text: TaskyTexts.createTeamTeamName,
              ),
              TaskyTextFormFiledWithText(
                width: 152,
                controller: _controller,
                hintText: 'hello',
                text: TaskyTexts.createTeamTeamName,
              ),
              // const SizedBox(height: 20,),
              // TaskyContainerState(
              //   title: TaskyText.taskStatusInProgress2,
              //   onPressed: () {
              //     Navigation.navigateTo(context, ChatScreen());
              //
              //   },
              //   icon: Icons.import_contacts_outlined,
              //   onPressedMore: () {
              //     Navigation.navigateTo(context, ChatScreen());
              //   },
              //   description: Text('TaskyText.taskStatusInProgress2',style: TaskyTextStyle.text12grayText1400,)
              // ),
              CircularPercentIndicator(radius: 80),

              ElevatedButton(
                  onPressed: () {
                    Navigation.navigateTo(context, const TodayTaskyScreen());
                  },
                  child: Text("Tasky_Tody"))
            ],
          ),
        ),
      ),
    );
  }
}
