import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/constants/tasky_color.dart';

class CustomWidgets {
  static Widget buildSwitchField(
      String hintText, bool switchValue, ValueChanged<bool> onChanged) {
    return Stack(
      alignment: Alignment.centerRight,
      children: [
        SizedBox(
          width: 327,
          height: 55,
          child: TextField(
            readOnly: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              hintText: hintText,
              hintStyle: TaskyTextStyle.text16darkBlue500,
              suffixIcon: Transform.scale(
                scale: 0.8,
                child: Switch(
                  value: switchValue,
                  activeColor: TaskyColor.orange,
                  thumbColor: WidgetStateProperty.all(TaskyColor.white),
                  onChanged: onChanged,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  static Widget buildTextField(String hintText) {
    return SizedBox(
      width: 327,
      height: 55,
      child: TextField(
        readOnly: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          hintText: hintText,
          hintStyle: TaskyTextStyle.text16darkBlue500,
          suffixIcon: Transform.scale(
            scale: 0.8,
            child: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
      ),
    );
  }
}