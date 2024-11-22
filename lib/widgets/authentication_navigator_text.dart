import 'package:final_project/core/services/media_query_util.dart';
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
            textStyle: TextStyle(
              fontSize: 14.f,
              fontWeight: FontWeight.w400,
              color: const Color(0xff868D95),
            ),
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
              style: TextStyle(
                fontSize: 14.f,
                fontWeight: FontWeight.w600,
                color: const Color(0xffFF8500),
              ),
            ),
          ),
        )
      ],
    );
  }
}
