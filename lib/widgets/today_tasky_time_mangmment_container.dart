import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class TodayTaskyTimeMangmmentContainer extends StatelessWidget {
  const TodayTaskyTimeMangmmentContainer({
    super.key,
    required this.containerColor,
    required this.textOne,
    this.rowWidgets,
  });

  final Color containerColor;
  final String textOne;
  final List<Widget>? rowWidgets;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.h,
      width: 253.w,
      decoration: BoxDecoration(
        color: containerColor,
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 15.p.top, left: 21.p.left),
            child: Text(
              textOne,
              style: TextStyle(
                fontSize: 14.f,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
          ),
          if (rowWidgets != null && rowWidgets!.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(top: 10.p.top, left: 21.p.left),
              child: Row(
                children: rowWidgets!,
              ),
            ),
        ],
      ),
    );
  }
}
