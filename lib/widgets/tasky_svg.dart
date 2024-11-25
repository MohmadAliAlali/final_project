import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TaskcySvg extends StatelessWidget {
  const TaskcySvg(
      {super.key,
      // ignore: non_constant_identifier_names
      required this.TaskcySvgLink,
      this.svgWidth,
      this.svgHeight,
      this.svgTopPadding,
      this.svgLeftPadding,
      this.svgBottomPadding,
      this.svgRightPadding,
      this.svgColor});
  // ignore: non_constant_identifier_names
  final String TaskcySvgLink;
  final double? svgWidth;
  final double? svgHeight;
  final double? svgTopPadding;
  final double? svgLeftPadding;
  final double? svgBottomPadding;
  final double? svgRightPadding;
  final Color? svgColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: svgTopPadding ?? 0,
          right: svgRightPadding ?? 0,
          bottom: svgBottomPadding ?? 0,
          left: svgLeftPadding ?? 0),
      child: SvgPicture.asset(
        TaskcySvgLink,
        width: svgWidth,
        height: svgHeight,
        // ignore: deprecated_member_use
        color: svgColor,
      ),
    );
  }
}
