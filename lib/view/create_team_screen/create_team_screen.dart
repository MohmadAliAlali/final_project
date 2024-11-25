import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_app_custom_list_view_team_members.dart';
import 'package:final_project/widgets/tasky_button_profile.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text_form_filed_with_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:final_project/core/constants/tasky_text.dart';
class CreateTeamScreen extends StatefulWidget {
  const CreateTeamScreen({super.key});

  @override
  State<CreateTeamScreen> createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  final TextEditingController teamNameController = TextEditingController();
  final List<String> teamMembers = [
    TaskyImages.user3,
    TaskyImages.user4,
    TaskyImages.user4,
    TaskyImages.user3,
  ];
  String? selectedType;

  final List<String> names = ["Jenny", "mehrin", "Avishek", "Jafar", ""];
  final types = ["Type A", "Type B", "Type C"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskcyHeader(
                svgIconOne: TaskcySvg(
                    svgWidth: 20.w,
                    svgHeight: 20.h,
                    TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
                isbuttonTwoShow: false,
                isButtonText: true,
                isButtonContainer: false,
                istextShow: true,
                screenName: 'Create Team',
                textLeftPadding: 62.w,
                onPressed: (){
                  Navigation.goBack(context);
                },
              ),
              SizedBox(
                width:375.w ,
                height:208.h ,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0.h,
                      right: 0,
                      child: SizedBox(
                        width: 198.w,
                        height: 208.h,
                        child: SvgPicture.asset(
                            'assets/images/circlesImage.svg',
                            fit: BoxFit.fill,
                        ),
                      ),
                    ),
                    Positioned(
                      right: 73.w,
                      top: 81.h,
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/xacademyLogo.svg',
                          height: 35.h,
                          fit: BoxFit.fill,
                          //fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TaskyTextFormFiledWithText(
                      text:  Text(
                        "Team Name",
                        style: TaskyTextStyle.text14darkBlue400,
                      ),
                        controller: teamNameController, hintText: "Team Align"),
                  ],
                ),
              ),

              Padding(
                padding: EdgeInsets.only(left: 20.0.w),
                child: TaskyText.createTeamTeamMember
              ),
              Padding(
                padding:  EdgeInsets.only(left: 12.0.w,top: 16.h,bottom: 30.h),
                child: Container(
                  height: 80.h,
                  decoration: const BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: SizedBox(
                    width: 375.w,
                    height: 90.h,
                    child: TaskyAppCustomListViewTeamMembers(
                        teamMembers: teamMembers, names: names),
                  ),
                ),
              ),
              Container(
                  width: 327.w,
                  height: 1.h,
                  color: TaskyColor.gray5,
                margin: EdgeInsets.fromLTRB(24.w, 0, 0, 30.h),
                ),
              Padding(
                padding:  EdgeInsets.only(left: 20.0.w,bottom: 16.w),
                child: Text(
                  "Type",
                  style: TaskyTextStyle.text14darkBlue400,
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 20.0.w,bottom: 16.h),
                child: SizedBox(
                  height: 50.h,
                  child:
                  ListView.separated(
                    separatorBuilder: (context, index) {
                      return SizedBox(width: 16.0.w); // المسافة بين العناصر
                    },
                  scrollDirection: Axis.horizontal,
                    itemCount: types.length,
                    itemBuilder: (context, index) {
                      final type = types[index];
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
              ),
              Padding(
                padding:
                     EdgeInsets.symmetric(horizontal: 60.0.w, vertical: 30.h),
                child: SizedBox(
                  width: double.infinity,
                  child: TaskyButtonProfile(
                    onPressed: () {  },
                    child: TaskyText.createTeamCreateTeamButton ,),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget buildTypeContainer(BuildContext context, String type, bool isSelected) {
    return  Container(
        height: 40.h,
        width: 101.w,
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
