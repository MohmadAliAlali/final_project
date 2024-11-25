import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
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
        thickness: 1.h,
        endIndent: 24.w,
        indent: 24.w,
        height: 8.h,

      ),
      itemBuilder: (context, index) {
        return SizedBox(
          height: 79.h,
          child: ListTile(
            contentPadding: EdgeInsets.only(left: 24.w,right: 24.w),
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 24.r,
                    backgroundImage: AssetImage(avatarPaths[index]),
                  ),
                  if (times[index] == "Active Now")
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: CircleAvatar(
                        radius: 6.r,
                        backgroundColor: Colors.green,
                      ),
                    ),
                ],
              ),
              title: SizedBox(
                height: 48.h,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      names[index],
                      style: TaskyTextStyle.text14darkBlue500,
                    ),
                    SizedBox(height: 6.h,),
                    Text(
                      times[index],
                      style: TaskyTextStyle.text11grayText1500,
                    ),
                  ],
                ),
              ),
              horizontalTitleGap: 16.w,
              trailing: TaskyIcons.cameraChatScreen
          ),
        );
      },
    );
  }
}
