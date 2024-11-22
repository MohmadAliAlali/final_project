import 'package:flutter_svg/svg.dart';
import 'package:tasky_project/core/constants/app_icons.dart';
import 'package:tasky_project/core/constants/tasky_text_style.dart';
import 'package:flutter/material.dart';

class TaskyAppCustomListViewSeparated extends StatelessWidget {
  const TaskyAppCustomListViewSeparated({
    super.key,
    required this.names,
    required this.avatarPaths,
    required this.times,
  });

  final List<String> names;
  final List<String> avatarPaths;
  final List<String> times;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: names.length,
      separatorBuilder: (context, index) => Divider(
        color: Colors.grey.shade400,
        thickness: 1,
        endIndent: 10,
        indent: 10,
      ),
      itemBuilder: (context, index) {
        return ListTile(
          leading: Stack(
            children: [
              CircleAvatar(
                radius: 24,
                backgroundImage: AssetImage(avatarPaths[index]),
              ),
              if (times[index] == "Active Now")
                const Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 6,
                    backgroundColor: Colors.green,
                  ),
                ),
            ],
          ),
          title: Text(
            names[index],
            style: TaskyTextStyle.namesChatPageTextStyle,
          ),
          subtitle: Text(
            times[index],
            style: TaskyTextStyle.lastTimeChatPageTextStyle,
          ),
          trailing: SvgPicture.asset(
            AppIcons.cameraIcon,
            width: 16,
          ),
        );
      },
    );
  }
}
