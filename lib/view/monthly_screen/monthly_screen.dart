import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';

class MonthlyScreen extends StatefulWidget {
  const MonthlyScreen({super.key});

  @override
  State<MonthlyScreen> createState() => _MonthlyScreenState();
}

class _MonthlyScreenState extends State<MonthlyScreen> {
  List<DateTime> currentMonthList = List.empty();
  DateTime currentDateTime = DateTime.now();
  List<String> tidayList = [];
  Widget weakDaysListView() {
    return Container();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          TaskcyHeader(
            svgIconOne: TaskcySvg(
                svgWidth: 20,
                svgHeight: 20,
                TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
            svgIconTwo: TaskcySvg(
              svgWidth: 20,
              svgHeight: 20,
              TaskcySvgLink: 'assets/icons/add.svg',
              svgColor: TaskyColor.darkBlue,
            ),
            isbuttonTwoShow: true,
            isButtonText: false,
            isButtonContainer: true,
            istextShow: true,
            screenName: 'Monthly Task',
            textLeftPadding: 40,
            textButtonOrContainerLeftPadding: 80,
          ),
        ]),
      ),
    );
  }
}
