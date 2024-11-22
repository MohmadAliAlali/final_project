import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/view/nav_bar_page.dart';
import 'package:final_project/widgets/tasky_button_add.dart';
import 'package:final_project/widgets/tasky_button_root.dart';
import 'package:final_project/widgets/tasky_button_profile.dart';
import 'package:final_project/widgets/tasky_button_user_profile.dart';
import 'package:final_project/widgets/tasky_button_with_swich.dart';
import 'package:final_project/widgets/tasky_container_state.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_text_form_filed_with_text.dart';
import 'package:flutter/material.dart';

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
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            TaskcyHeader(
              isbuttonTwoShow: true,
              isButtonText: true,
              isButtonContainer: true,
              istextShow: true,
              screenName: 'title',
              textLeftPadding: 50.w,
              textButtonOrContainerLeftPadding: 50.w,
              svgIconOne: TaskyIcons.backArrowIos
            ),
            TaskyButtonUserProfile(onPressed: () {  },
              text: TaskyText.profileMyProjects,
              child: Text('data'),),
            const SizedBox(height: 20,),
            TaskyButtonWithSwitch(onPressed: () {  },
              text: TaskyText.settingsPermission,
              ),
            const SizedBox(height: 20,),
            TaskyTextFormFiledWithText(
              controller: _controller,
              hintText: 'hello',
              prefixIcon: TaskyIcons.search,
              text: TaskyText.createTeamTeamName,),
            TaskyTextFormFiledWithText(
              width: 152,
              controller: _controller,
              hintText: 'hello',
              text: TaskyText.createTeamTeamName,),
            const SizedBox(height: 20,),
            TaskyContainerState(
              title: TaskyText.taskStatusInProgress2,
              onPressed: () {  },
              icon: Icons.import_contacts_outlined,
              onPressedMore: () {
                print('object');
              },
              description: Text('TaskyText.taskStatusInProgress2',style: TaskyTextStyle.text12grayText1400,)
            )
          ],
        ),
      ),

    );
  }
}

