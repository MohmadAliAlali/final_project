import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:flutter/material.dart';

class TaskcyHomeScreen extends StatelessWidget {
  const TaskcyHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TaskcyHeader(
              screenName: 'Detailes',
              isbuttonTwoShow: true,
              isButtonText: true,
              isButtonContainer: false,
              istextShow: true,
              textLeftPadding: 86.w,
              textButtonOrContainerLeftPadding: 91.w
            )
          ],
        ),
      ),
    );
  }
}
