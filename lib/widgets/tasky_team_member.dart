import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';
import '../core/constans/tasky_color.dart';
import '../core/constans/tasky_icons.dart';
import '../view/add_task_screen/add_task_team_member.dart';

class TeamMemberCard extends StatelessWidget {
  final TeamMember member;

  const TeamMemberCard({Key? key, required this.member}) : super(key: key);

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
                width: 40,
                height: 40,
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
                    width: 40.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,),
                      child: CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.orange.withOpacity(0.5),
                  ),
                ),
              if (member.isSelected)
                const Icon(
                  Icons.check,
                  color: Colors.white,
                  size: 24,
                ),
            ],
          ),

          SizedBox(height: 8.h),
          Text(
            member.name,
            style:  TextStyle( fontFamily: 'Poppins-Regular',
              height: 14.h/11.f,
              fontSize: 14.0.f,
              fontWeight: FontWeight.w400,
              color: TaskyColor.grayText1,),
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
          width: 40, // قطر الدائرة
          height: 40,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.orange,
              width: 1, // عرض الإطار
            ),
            shape: BoxShape.circle,
            color: Colors.orange,
          ),
          child: CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            child: TaskyIcons.addOrange, // أيقونة الإضافة
          ),
        ),
        const SizedBox(height: 8),
        const Text('', style: TextStyle(fontSize: 14)),
      ],
    ),
  );
}
