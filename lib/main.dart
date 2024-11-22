import 'package:final_project/view/nav_bar_page.dart';
import 'package:final_project/view/settings_screen/settings_screen.dart';
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
        home: NavBarPage());
  }
}
