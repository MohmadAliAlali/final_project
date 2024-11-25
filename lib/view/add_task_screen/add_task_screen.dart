import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/exports/exports.dart';
import 'package:final_project/view/add_task_screen/add_task_team_member.dart';
import 'package:final_project/widgets/tasky_button_profile.dart';
import 'package:final_project/widgets/tasky_text_form_filed_with_text.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import '../../core/constants/tasky_images.dart';
import '../../widgets/tasky_button_root.dart';
import '../../widgets/tasky_header.dart';
import '../../widgets/tasky_svg.dart';
import '../../widgets/tasky_team_member.dart';
import '../../widgets/tasky_timepicker.dart';
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

  String _selectedDate = "No Date Chosen";

  void _showDatePicker() async {
    DateTime? pickedDate = await DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      minTime: DateTime(2020, 1, 1),
      maxTime: DateTime(2025, 12, 31),
      currentTime: DateTime.now(),
      locale: LocaleType.en,
    );

    if (pickedDate != null) {
      setState(() {
        _selectedDate = pickedDate.toString();
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
  final List<String> boards = [
    'Urgent',
    'Running',
    'ongoing',
  ];
  String? selectedType;

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
              textLeftPadding: 80.w,
              textButtonOrContainerLeftPadding: 80.w,
            ),
            Padding(
                padding: EdgeInsets.only(top: 40.0.h, left: 24.w, right: 10.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskyTextFormFiledWithText(
                        controller: _taskNameController,
                        hintText: 'Mobile Application design',
                        text: TaskyText.addTaskTaskName,
                      pb: 20.h,
                    ),
                    TaskyText.addTaskTeamMember,
                    SizedBox(
                      height: 10.h,
                    ),
                    SizedBox(
                      height: 100.h,
                      width: 375.w,
                      child:ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: teamMembers.length + 1, // Add 1 for the AddMemberButton
                        itemBuilder: (context, index) {
                          if (index < teamMembers.length) {
                            return TeamMemberCard(member: teamMembers[index]);
                          } else {
                            // Return the AddMemberButton at the end
                            return AddMemberButton(onPressed: () {});
                          }
                        },
                      )
                    ),
                    TaskyText.addTaskDate,
                   SizedBox(height: 16.h),
                    TaskyButtonRoot(
                      height: 64,
                      onPressed: () => _showDatePicker(),
                      paddingLeft: 16.w,
                      child: Text(
                        style: TaskyTextStyle.text18darkBlue600,
                        '$_selectedDate'
                      ),
                    ),
                    SizedBox(height: 30.h,),
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
                                const TaskyTimepicker()
                              ],
                            ),
                            SizedBox(width: 30.w,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                TaskyText.addTaskEndTime,
                                SizedBox(height: 20.h,),
                                const TaskyTimepicker()

                              ],
                            ),
                          ],
                        ),
                    SizedBox(height: 20.h,),
                    TaskyText.addTaskBoard,
                   Column(
                      children: [
                        SizedBox(height: 16.h),
                        SizedBox(
                            width: 375.w,
                              height: 50.h,
                              child:
                              ListView.separated(
                                separatorBuilder: (context, index) {
                                  return SizedBox(width: 16.0.w); // المسافة بين العناصر
                                },
                                scrollDirection: Axis.horizontal,
                                itemCount: boards.length,
                                itemBuilder: (context, index) {
                                  final type = boards[index];
                                  return GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        selectedType = type; // Update the selected type
                                      });
                                    },
                                    child: buildTypeContainer(context, type, type == selectedType),
                                  );
                                },
                              )
                          ),
                        SizedBox(height: 30.h),
                        TaskyButtonProfile(
                            onPressed: (){},
                            child: TaskyText.addTaskSaveButton
                        )
                      ],
                    ),
                    ],
                )
            ),

          ],
        ),
      ),
    );
  }
  Widget buildTypeContainer(BuildContext context, String type, bool isSelected) {
    return  Container(
      padding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 26.w),
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.r),
        color: Colors.grey.shade200,
        border: Border.all(
          color: isSelected ? Colors.blue : Colors.transparent, // Highlight when selected
          width: 2.r,
        ),
      ),
      child: Center(
        child: Text(
          type,
          style: isSelected
              ? TaskyTextStyle.text14darkBlue500.copyWith(
              fontWeight: FontWeight.bold, color: Colors.blue)
              : TaskyTextStyle.text14darkBlue500,
        ),
      ),
    );
  }

}
