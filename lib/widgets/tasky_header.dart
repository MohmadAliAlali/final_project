import 'package:final_project/core/services/media_query_util.dart';
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
    required this.textLeftPadding,
    required this.textButtonOrContainerLeftPadding,
    this.onPressedLeading,
    this.onPressedActions,


  });

  final Widget? svgIconTwo;
  final Widget? svgIconOne;
  final bool isbuttonTwoShow;
  final bool istextShow;
  final bool isButtonText;
  final bool isButtonContainer;
  final Widget? screenNameNavigator;
  final String screenName;
  final double textLeftPadding;
  final double textButtonOrContainerLeftPadding;
  final VoidCallback? onPressedLeading;
  final VoidCallback? onPressedActions;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        InkWell(
          onTap: onPressedLeading,
          child: Container(
            margin: EdgeInsets.only(top: 16.p.top, left: 24.p.left),
            width: 42.w,
            height: 42.h,
            padding: 7.p,
            decoration: BoxDecoration(
              border: Border.all(
                color: const Color(0xffDFDFDF),
              ),
              shape: BoxShape.circle,
              color: const Color(0xffFFFFFF),
            ),
            child: svgIconOne,
          ),
        ),
        istextShow
            ? TaskcyText(
                textStyle:
                    TextStyle(fontSize: 18.f, fontWeight: FontWeight.w500),
                topPadding: 28.p.top,
                leftPadding: textLeftPadding,
                text: screenName,
              )
            : Container(
                color: const Color(0xffFFFFFF),
              ),
        isbuttonTwoShow && isButtonContainer
            ? InkWell(
                onTap: onPressedActions,
                child: Container(
                  margin: EdgeInsets.only(
                      top: ScreenUtil.screenHeight * 16,
                      left: textButtonOrContainerLeftPadding),
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
                    onTap: onPressedActions,
                    child: TaskcyText(
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
