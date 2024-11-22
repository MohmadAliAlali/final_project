import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

import '../../core/constans/tasky_text.dart';
import '../../core/services/navigation.dart';
import '../langauge_screen/langauge_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:Container(
          decoration: BoxDecoration(
              color: TaskyColor.white,
              border: Border.all(color:const  Color(0xffDFDFDF),width: 1.e),
              borderRadius: BorderRadius.circular(12.r)
          ),
          width: 100,
          height: 50,
          child: TextButton(onPressed:()
          { Navigation.navigateTo (context,LangaugeScreen());}, child: TaskyText.langauge_title),
        )
        ) ,


      );


  }
}
