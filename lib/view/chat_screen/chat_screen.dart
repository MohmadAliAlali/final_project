import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/edit_profile_screen/edit_profile_screen.dart';
import 'package:final_project/widgets/tasky_app_custom_list_view_separated.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _searchController = TextEditingController();

  final List<String> names = [
    "Jenny Alxinder",
    "Team Align",
    "Alex Avishek",
    "Jafar Dicrose",
  ];

  final List<String> times = [
    "Active Now",
    "Active 1h ago",
    "Active 1h ago",
    "Active 1h ago",
  ];
  final List<String> avatarPaths = [
    TaskyImages.chatUser4,
    TaskyImages.chatUser5,
    TaskyImages.chatUser6,
    TaskyImages.chatUser8,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TaskcyHeader(
              svgIconOne: TaskcySvg(
                  svgWidth: 20.w,
                  svgHeight: 20.h,
                  TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
              svgIconTwo: TaskcySvg(
                  svgWidth: 20.w,
                  svgHeight: 20.h,
                  TaskcySvgLink: 'assets/icons/add.svg',
                svgColor: TaskyColor.darkBlue,
              ),
              isbuttonTwoShow: true,
              isButtonText: false,
              isButtonContainer: true,
              istextShow: true,
              screenName: 'Chat',
              textLeftPadding: 104.w,
              textButtonOrContainerLeftPadding: 104.w,
                onPressed: (){
                print('object');
                Navigation.navigateTo(context,const EditProfileScreen());
                },
            ),
            Padding(
              padding:  EdgeInsets.only(top: 40.0.h),
              child: TaskyTextField(
                height: 80,
                controller: _searchController,
                hintText: 'Search',
                prefixIcon: TaskyIcons.search,
              ),
            ),
            Expanded(
              child: TaskyAppCustomListViewSeparated(
                  names: names, avatarPaths: avatarPaths, times: times),
            ),
          ],
        ),
      ),
    );
  }
}