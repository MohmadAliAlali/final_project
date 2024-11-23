import 'package:flutter/material.dart';

class TaskyText extends StatelessWidget {
  const TaskyText(
      {super.key,
      required this.text,
      this.textStyle,
      this.topPadding,
      this.leftPadding,
      this.rightPadding,
      this.bottomPadding,
      this.textAlign,
      this.softWrap});
  final String text;
  final TextStyle? textStyle;
  final double? topPadding;
  final double? leftPadding;
  final double? rightPadding;
  final double? bottomPadding;
  final TextAlign? textAlign;
  final bool? softWrap;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            top: topPadding ?? 0,
            left: leftPadding ?? 0,
            right: rightPadding ?? 0,
            bottom: bottomPadding ?? 0),
        child: Text(
          textAlign: textAlign,
          softWrap: softWrap,
          text,
          style: textStyle,
        ));
  }
}
