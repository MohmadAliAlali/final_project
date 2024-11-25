import 'package:final_project/view/welcome_screen/welcome_screen.dart';
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
    return const MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        home:  WelcomeScreen());
  }
}
