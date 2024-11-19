import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:flutter/material.dart';

class TaskyText {
  static Text welcomeSKIP = Text('SKIP',style: TaskyTextStyle.text16Black400,);
  static Text welcomeTitle = Text('Lorem ipsum dolor sit amet',style: TaskyTextStyle.text18Black700,);
  static Text welcomeDescription = Text('Lorem ipsum dolor sit amet consectetur.Accumsan scelerisque viverra conguemattis purus. Sed urna aliquet pulvinarmauris donec ',
    style: TaskyTextStyle.text16Black400,
    textAlign: TextAlign.center,
  );
  static Text confirmResend = Text('Click to Resend',style: TaskyTextStyle.text16Orange700,);
  static Text confirmResendClicked = Text('Click to Resend',style: TaskyTextStyle.text16Black700,);
  static Text confirmLogin = Text('Log in',style: TaskyTextStyle.text16Orange700,);
}