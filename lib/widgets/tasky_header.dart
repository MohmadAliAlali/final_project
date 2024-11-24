import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class TaskcyHeader extends StatelessWidget {
  const TaskcyHeader({
    super.key,
    this.svgIconOne,
    required this.isbuttonTwoShow,
    required this.isButtonText,
    required this.isButtonContainer,
    required this.istextShow,
    this.svgIconTwo,
    this.screenNameNavigator,
    required this.screenName,
    this.textLeftPadding,
    this.textButtonOrContainerLeftPadding,
    this.onPressed,
    this.onPressedRightIcon,
  });

  final Widget? svgIconTwo;
  final Widget? svgIconOne;
  final VoidCallback? onPressed;
  final VoidCallback? onPressedRightIcon;
  final bool isbuttonTwoShow;
  final bool istextShow;

  final bool isButtonText;
  final bool isButtonContainer;

  final Widget? screenNameNavigator;
  final String screenName;

  final double? textLeftPadding;
  final double? textButtonOrContainerLeftPadding;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: onPressed,
          child: Container(
            margin: EdgeInsets.only(top: 16.p.top, left: 24.p.left),
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffDFDFDF),
              ),
              shape: BoxShape.circle,
              color: const Color(0xffFFFFFF),
            ),
            child: Center(child: svgIconOne),
          ),
        ),
        istextShow
            ? TaskyText(
                textStyle: TaskyTextStyle.titleHomePageTextStyle,
                topPadding: 20.p.top,
                leftPadding: textLeftPadding,
                text: screenName,
              )
            : Container(
                color: const Color(0xffFFFFFF),
              ),
        isbuttonTwoShow && isButtonContainer
            ? GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(
                      top: 16.h, left: textButtonOrContainerLeftPadding ?? 0),
                  width: 42.w,
                  height: 42.h,
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 1.w,
                      color: const Color(0xffDFDFDF),
                    ),
                    shape: BoxShape.circle,
                    color: const Color(0xffFFFFFF),
                  ),
                  child: Center(child: svgIconTwo),
                ),
              )
            : isbuttonTwoShow && isButtonText
                ? InkWell(
                    onTap: onPressedRightIcon,
                    child: TaskyText(
                      textStyle: TextStyle(
                          fontSize: 18.f,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xffFF8500)),
                      topPadding: 29.p.top,
                      leftPadding: textButtonOrContainerLeftPadding,
                      text: "save",
                    ),
                  )
                : Container(
                    color: const Color(0xffFFFFFF),
                  )
      ],
    );
  }
}
