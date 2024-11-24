import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
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
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: teamMembers.length + 1,
      itemBuilder: (context, index) {
        if (index == teamMembers.length) {
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              children: [
                CircleAvatar(
                  radius: 22,
                  child: Icon(
                    Icons.add,
                    color: TaskyColor.orange,
                  ),
                ),
              ],
            ),
          );
        }
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.grey.shade200,
                child: SvgPicture.asset(
                  teamMembers[index],
                  fit: BoxFit.cover,
                  width: double.infinity,
                  //height: 30,
                ),
              ),
              Text(
                names[index],
                style: TaskyTextStyle.teamNameTextStyle,
              ),
            ],
          ),
        );
      },
    );
  }
}
