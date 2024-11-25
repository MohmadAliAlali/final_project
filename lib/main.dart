import 'package:final_project/view/monthly_task_screen/monthly_task_screen.dart';
import 'package:final_project/view/signup_screen/signup_screen.dart';
import 'package:final_project/view/create_team_screen/create_team_screen.dart';
import 'package:final_project/view/monthly_screen/monthly_screen.dart';
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
        home: MonthlyTaskScreen());
  }
}
