import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/add_task_screen/add_task_team_member.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../core/constans/tasky_images.dart';
import '../../widgets/tasky_button_root.dart';
import '../../widgets/tasky_header.dart';
import '../../widgets/tasky_svg.dart';
import '../../widgets/tasky_team_member.dart';
import '../../widgets/tasky_text_field.dart';
import '../../widgets/tasky_timepicker.dart';
import 'package:intl/intl.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final TextEditingController _taskNameController = TextEditingController();

  final List<TeamMember> teamMembers = [
    TeamMember(name: 'Jeny', imageUrl: TaskyImages.createTeamUser6),
    TeamMember(name: 'mehrin', imageUrl: TaskyImages.createTeamUser4),
    TeamMember(
        name: 'Avishek',
        imageUrl: TaskyImages.createTeamUser10,
        isSelected: true),
    TeamMember(name: 'Jafor', imageUrl: TaskyImages.createTeamUser5),
  ];

  String selectedDate = "";
  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null) {
      setState(() {
        selectedDate = DateFormat('MMMM dd, yyyy').format(pickedDate);
      });
    }
  }

  TimeOfDay? firstTime;
  TimeOfDay? secondTime;

  void updateFirstTime(TimeOfDay time) {
    setState(() {
      firstTime = time;
    });
  }

  void updateSecondTime(TimeOfDay time) {
    setState(() {
      secondTime = time;
    });
  }
  String selectedBoard = "";
  final List<Text> boards = [
    TaskyText.addTaskUrgent,
    TaskyText.addTaskRunning,
    TaskyText.addTaskOngoing,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            TaskcyHeader(
              onPressed: () {
                Navigation.goBack(context);
              },
              svgIconOne: TaskcySvg(
                  svgWidth: 20.w,
                  svgHeight: 20.h,
                  TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
              isbuttonTwoShow: false,
              isButtonText: false,
              isButtonContainer: true,
              istextShow: true,
              screenName: 'Add Task',
              textLeftPadding: 104.w,
              textButtonOrContainerLeftPadding: 104.w,
            ),
            Padding(
                padding: EdgeInsets.only(top: 40.0.h, left: 10.w, right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskyText.addTaskTaskName,
                    SizedBox(
                      height: 20.h,
                    ),
                    TaskyTextField(
                      height: 80,
                      controller: _taskNameController,
                      hintText: 'Mobile Application design',
                    ),
                    TaskyText.addTaskTeamMember,
                    SizedBox(
                      height: 10.h,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...teamMembers
                              .map((member) => TeamMemberCard(member: member))
                              .toList(),
                          AddMemberButton(onPressed: () {})
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    TaskyText.addTaskDate,
                    SizedBox(height: 10),
                    TaskyButtonRoot(
                      onPressed: () => _selectDate(context),
                      paddingLeft: 16.w,

                      child: Text(
                        "$selectedDate",
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          height: 24.h / 13.f,
                          fontSize: 18.0.f,
                          fontWeight: FontWeight.w500,
                          color: TaskyColor.black1,
                        ),
                      ),
                    ),
                    SizedBox(height: 20.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TaskyText.addTaskStartTime,
                                SizedBox(height: 20.h,),
                                TaskyTimepicker(
                                  )

                              ],
                            ),SizedBox(width: 30.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TaskyText.addTaskEndTime,
                                SizedBox(height: 20.h,),
                                TaskyTimepicker(
                                  //onTimeSelected: updateFirstTime,
                                )

                              ],
                            ),
                          ],
                        ),
                    SizedBox(height: 20.h,),
                    TaskyText.addTaskBoard,
                  Padding(
                    padding: EdgeInsets.only(top: 40.0.h, left: 10.w, right: 10.w),
                    child: Column(
                      children: [
                        // Board Section
                        SizedBox(height: 10.h),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: boards.map((board) {
                              final isSelected = selectedBoard == board.data;
                              return GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedBoard = board.data!;
                                  });
                                },
                                child: Container(
                                  margin: EdgeInsets.symmetric(horizontal: 5.w),
                                  padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
                                  decoration: BoxDecoration(
                                    color: TaskyColor.white,
                                    border: Border.all(
                                        color: isSelected ? TaskyColor.orange:TaskyColor.gray1 ),
                                    borderRadius: BorderRadius.circular(8.r),
                                  ),
                                  child: board,
                                ),
                              );
                            }).toList(),
                          ),
                        ),
                        SizedBox(height: 40.h),
                        // Save Button
                        Center(
                          child: GestureDetector(
                            onTap: () {
                              // Add Save Logic
                            },
                            child: Container(
                              width: 218.w,
                              height: 48.h,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: TaskyColor.orange,
                                borderRadius: BorderRadius.circular(8.r),
                              ),
                              child: Text(
                                "Save",
                                style: TextStyle(
                                  color: TaskyColor.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.f,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),


                    ],
                )),

          ],
        ),
      ),
    );
  }
}
