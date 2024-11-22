import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:tasky_project/core/constants/app_icons.dart';
import 'package:tasky_project/core/constants/app_images.dart';
import 'package:tasky_project/core/constants/tasky_text_style.dart';
import 'package:tasky_project/widgets/tasky_app_custom_chat_text_field.dart';
import 'package:tasky_project/widgets/tasky_app_custom_list_view_separated.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
    AppImages.jennyAvatar,
    AppImages.teamAvatar,
    AppImages.alexAvatar,
    AppImages.jafarAvatar,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Chat",
          style: TaskyTextStyle.titleChatPageTextStyle,
        ),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Stack(children: [
            CircleAvatar(
              radius: 18,
            ),
            Positioned(
              left: 8,
              top: 8,
              child: SvgPicture.asset(
                AppIcons.arrowIcon,
                width: 26,
              ),
            ),
          ]),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Stack(children: [
              CircleAvatar(
                radius: 18,
              ),
              Positioned(
                right: 12,
                top: 12,
                child: Image.asset(AppIcons
                    .plusIconPng), //SvgPicture.asset(AppIcons.plusIcon),
              )
            ]),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: TaskyAppCustomChatTextField(),
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
