import 'package:final_project/core/constants/app_icons.dart';
import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class AuthinticationWithGoogleAndApple extends StatelessWidget {
  const AuthinticationWithGoogleAndApple(
      {super.key,
      required this.text,
      this.textTopPadding,
      this.textLeftPadding,
      this.textRightPadding});
  final String text;
  final double? textTopPadding;
  final double? textLeftPadding;
  final double? textRightPadding;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TaskyText(
          topPadding: textTopPadding,
          leftPadding: textLeftPadding,
          rightPadding: textRightPadding,
          text: text,
          textStyle: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14.f,
              color: const Color(0xff868D95)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 30.p.top, left: 113.p.left),
                height: 58.w,
                width: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 1.w,
                    color: const Color(0xffDFDFDF),
                  ),
                ),
                child: Center(
                  child: TaskcySvg(
                    TaskcySvgLink: AppIcons.appleIcon,
                    svgWidth: 21.w,
                    svgHeight: 26.h,
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.only(top: 30.p.top, left: 30.p.left),
                height: 58.w,
                width: 60.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    width: 1.w,
                    color: const Color(0xffDFDFDF),
                  ),
                ),
                child: Center(
                  child: TaskcySvg(
                    TaskcySvgLink: AppIcons.googleIcon,
                    svgWidth: 21.w,
                    svgHeight: 26.h,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
