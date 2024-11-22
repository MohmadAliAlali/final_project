import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tasky_project/core/constants/app_icons.dart';
import 'package:tasky_project/core/constants/tasky_text_style.dart';

class TaskyAppCustomChatTextField extends StatelessWidget {
  const TaskyAppCustomChatTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(
            AppIcons.searchIcon,
            width: 20,
          ),
        ),
        hintStyle: TaskyTextStyle.hintSearchChatPageTextStyle,
        filled: true,
        fillColor: Colors.white24,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 1, color: Colors.grey),
          borderRadius: BorderRadius.circular(15),
        ),
        isDense: true,
        contentPadding: const EdgeInsets.symmetric(vertical: 12),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          borderSide: BorderSide(
            width: 1,
          ),
        ),
      ),
    );
  }
}
