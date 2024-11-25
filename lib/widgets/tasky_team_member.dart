import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';
import '../core/constants/tasky_color.dart';
import '../core/constants/tasky_icons.dart';
import '../view/add_task_screen/add_task_team_member.dart';

class TeamMemberCard extends StatelessWidget {
  final TeamMember member;

  const TeamMemberCard({super.key, required this.member});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(right:12.0.w),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 40.e,
                height: 40.e,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage(member.imageUrl),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              if (member.isSelected)
                Container(
                    width: 40.e,
                    height: 40.e,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,),
                      child: CircleAvatar(
                    radius: 30.r,
                    backgroundColor: Colors.orange.withOpacity(0.5),
                  ),
                ),
              if (member.isSelected)
                 TaskyIcons.trueMark
            ],
          ),
          SizedBox(height: 8.h),
          Text(
            member.name,
            style:  TaskyTextStyle.text14gray0500,
          ),
        ],
      ),
    );
  }
}
Widget AddMemberButton({
  required VoidCallback onPressed,
}) {
  return GestureDetector(
    onTap: onPressed,
    child: Column(
      children: [
        Container(
          width: 40.e,
          height: 40.e,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange,
              width: 1.e,
            ),
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          child: CircleAvatar(
            radius: 27.r,
            backgroundColor: Colors.white,
            child: TaskyIcons.addOrange,
          ),
        ),
        SizedBox(height: 8.h),
        Text('', style: TextStyle(fontSize: 14.f)),
      ],
    ),
  );
}
