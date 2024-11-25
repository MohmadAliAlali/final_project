import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class TaskyAppCustomListViewTeamMembers extends StatelessWidget {
  const TaskyAppCustomListViewTeamMembers({
    super.key,
    required this.teamMembers,
    required this.names,
  });

  final List<String> teamMembers;
  final List<String> names;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return SizedBox(width: 10.0.w); // المسافة بين العناصر
      },
      scrollDirection: Axis.horizontal,
      itemCount: teamMembers.length + 1,
      itemBuilder: (context, index) {
        if (index == teamMembers.length) {
          return Padding(
            padding: 4.p,
            child: Column(
              children: [
                CircleAvatar(
                  radius: 22.r,
                  child: TaskyIcons.addOrange
                ),
              ],
            ),
          );
        }
        return Padding(
          padding: 4.p,
          child: Column(
            children: [
              CircleAvatar(
                radius: 20.r,
                backgroundColor: Colors.grey.shade200,
                child: Image.asset(
                  teamMembers[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  //height: 30,
                ),
              ),
              SizedBox(height: 6.h,),
              Text(
                names[index],
                style: TaskyTextStyle.text14gray0500,
              ),
            ],
          ),
        );
      },
    );
  }
}
