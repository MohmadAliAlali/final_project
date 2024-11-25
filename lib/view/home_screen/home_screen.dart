import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/constants/tasky_valid.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/chat_screen/chat_screen.dart';
import 'package:final_project/view/langauge_screen/langauge_screen.dart';
import 'package:final_project/view/settings_screen/settings_screen.dart';
import 'package:final_project/widgets/tasky_button_user_profile.dart';
import 'package:final_project/widgets/tasky_button_with_swich.dart';
import 'package:final_project/widgets/tasky_container_state.dart';
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
    );
  }
}

