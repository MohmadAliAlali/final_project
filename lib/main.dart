import 'package:final_project/view/nav_bar_page.dart';
import 'package:final_project/view/screens/authentication/signup/signup_screen/signup_screen.dart';
import 'package:final_project/view/screens/home_screen/taskcy_home_screen.dart';
import 'package:final_project/view/screens/today_tasky_screen/today_tasky_screen.dart';
import 'package:final_project/widgets/today_tasky_calendar.dart';
import 'package:flutter/material.dart';

import 'core/services/responsive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const TodayTaskyScreen());
  }
}
