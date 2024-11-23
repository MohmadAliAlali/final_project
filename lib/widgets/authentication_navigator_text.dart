import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class AuthenticationNavigatorText extends StatelessWidget {
  const AuthenticationNavigatorText({
    super.key,
    required this.authNavigatorOptionText,
    required this.authNavigatorGoTo,
    this.topPadding,
    this.leftPadding,
    required this.targetPage,
  });

  final String authNavigatorOptionText;
  final String authNavigatorGoTo;
  final double? topPadding;
  final double? leftPadding;
  final Widget targetPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.only(top: topPadding ?? 0, left: leftPadding ?? 0),
          child: TaskyText(
            text: authNavigatorOptionText,
            textStyle: TaskyTextStyle.text14grayText1500
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: topPadding ?? 0,
          ),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => targetPage),
              );
            },
            child: Text(
              authNavigatorGoTo,
              style:TaskyTextStyle.text14Orange500
            ),
          ),
        )
      ],
    );
  }
}
