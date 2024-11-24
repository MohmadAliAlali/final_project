import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/widgets/tasky_app_custom_elevated_button.dart';
import 'package:final_project/widgets/tasky_app_custom_list_view_team_members.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class CreateTeamScreen extends StatefulWidget {
  const CreateTeamScreen({super.key});

  @override
  State<CreateTeamScreen> createState() => _CreateTeamScreenState();
}

class _CreateTeamScreenState extends State<CreateTeamScreen> {
  final TextEditingController teamNameController = TextEditingController();
  final List<String> teamMembers = [
    'assets/images/jeeny.svg',
    'assets/images/mehrin.svg',
    'assets/images/Alex.svg',
    'assets/images/jafar.svg',
  ];
  final List<String> names = ["Jenny", "mehrin", "Avishek", "Jafar", ""];

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
                    svgWidth: 20,
                    svgHeight: 20,
                    TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
                isbuttonTwoShow: false,
                isButtonText: true,
                isButtonContainer: false,
                istextShow: true,
                screenName: 'Create Team',
                textLeftPadding: 91,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 50.0),
                    child: SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 2.9,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 80.0),
                        child: SvgPicture.asset(
                          'assets/images/circlesImage.svg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 40,
                    top: 80,
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/xacademyLogo.svg',
                        height: 35,
                        //fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Team Name",
                      style: TaskyTextStyle.teamNameTextStyle,
                    ),
                    TaskyTextField(
                        controller: teamNameController, hintText: "Team Align"),
                  ],
                ),
              ),

              /* Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Team Align",
                    hintStyle: TaskyTextStyle.inputTeamNameTextStyle,
                    border: OutlineInputBorder(),
                  ),
                ),
              ),*/

              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Team Members",
                  style: TaskyTextStyle.teamNameTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                  ),
                  child: Expanded(
                    child: TaskyAppCustomListViewTeamMembers(
                        teamMembers: teamMembers, names: names),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Type",
                  style: TaskyTextStyle.teamNameTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SizedBox(
                  height: 50,
                  child: GridView(
                    scrollDirection: Axis.horizontal,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 0.4,
                      mainAxisSpacing: 4,
                      mainAxisExtent: 120,
                    ),
                    children: [
                      buildTypeContainer(context, "Public"),
                      buildTypeContainer(context, "Secret"),
                      buildTypeContainer(context, "Private"),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 60.0, vertical: 10),
                child: SizedBox(
                  width: double.infinity,
                  child: TaskyAppCustomElevatedButton(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTypeContainer(BuildContext context, String type) {
    return Padding(
      padding: const EdgeInsets.only(left: 4.0),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade200,
        ),
        child: Center(
          child: Text(
            type,
            style: TaskyTextStyle.teamNameTextStyle,
          ),
        ),
      ),
    );
  }
}
