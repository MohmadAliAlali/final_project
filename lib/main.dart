import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/view/home_screen/taskcy_home_screen.dart';
import 'package:final_project/widgets/taskcy_header.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskcyHomeScreen(),
    );
  }
}
