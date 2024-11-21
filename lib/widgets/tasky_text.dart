import 'package:flutter/material.dart';

class TaskcyText extends StatelessWidget {
  const TaskcyText(
      {super.key,
      required this.text,
      this.textStyle,
      this.topPadding,
      this.leftPadding,
      this.rightPadding,
      this.bottomPadding});
  final String text;
  final TextStyle? textStyle;
  final double? topPadding;
  final double? leftPadding;
  final double? rightPadding;
  final double? bottomPadding;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: topPadding ?? 0,
            left: leftPadding ?? 0,
            right: rightPadding ?? 0,
            bottom: bottomPadding ?? 0),
        child: Text(
          text,
          style: textStyle,
        ));
  }
}
