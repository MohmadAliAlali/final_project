import 'package:final_project/controller/authentication_controller/signin_controller/sign_in_authentication_controller.dart';
import 'package:final_project/core/constants/app_icons.dart';
import 'package:final_project/core/constants/const_data.dart';
import 'package:final_project/core/constants/taskcy_color.dart';
import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/view/screens/authentication/sign_up/tasky_sign_up.dart';
import 'package:final_project/widgets/authentication_navigator_text.dart';
import 'package:final_project/widgets/authentication_validation_button.dart';
import 'package:final_project/widgets/authintication_with_google_and_apple.dart';
import 'package:final_project/widgets/sigin_input_data.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class TaskySigin extends StatefulWidget {
  const TaskySigin({super.key});

  @override
  State<TaskySigin> createState() => _TaskySiginState();
}

class _TaskySiginState extends State<TaskySigin> {
  void signInAuth(BuildContext context) {
    SignInAuthenticationController.signInAuth(
      ConstData.signInGlobalKey,
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TasckcyColor.taskySignInBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskcyHeader(
                svgIconOne: TaskcySvg(
                    svgWidth: ScreenUtil.screenWidth * 20,
                    svgHeight: ScreenUtil.screenHeight * 15,
                    TaskcySvgLink: AppIcons.navigationIcon),
                isbuttonTwoShow: false,
                isButtonText: true,
                isButtonContainer: false,
                istextShow: true,
                screenName: 'Sign In',
                textLeftPadding: 91.p.left,
              ),
              TaskyText(
                topPadding: 40.p.top,
                leftPadding: 24.p.left,
                text: 'Welcome Back',
                textStyle: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: const Color(0xff002055),
                    fontSize: 25.f),
              ),
              TaskyText(
                leftPadding: ScreenUtil.screenWidth * 24,
                topPadding: 12.p.top,
                textStyle: TextStyle(
                    color: const Color(0xff868D95),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.w),
                text: 'Please Inter your email address ',
              ),
              TaskyText(
                leftPadding: 24.p.left,
                textStyle: TextStyle(
                    color: const Color(0xff868D95),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.f),
                text: 'and password for Login',
              ),
              const SiginInputData(),
              Padding(
                padding: EdgeInsets.only(top: 16.p.top, left: 226.p.left),
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.f,
                        color: const Color(0xff002055)),
                  ),
                ),
              ),
              AuthenticationValidationButton(
                  authFunction: () => signInAuth(context),
                  topPadding: 30.p.top,
                  buttonText: 'Sign In'),
              AuthinticationWithGoogleAndApple(
                textLeftPadding: 149.p.left,
                textTopPadding: 40.p.top,
                text: 'Signin with',
              ),
              AuthenticationNavigatorText(
                  targetPage: const TaskySignUp(),
                  leftPadding: 97.p.left,
                  topPadding: 40.p.top,
                  authNavigatorOptionText: 'Not Registrar Yet?',
                  authNavigatorGoTo: ' Sign Up')
            ],
          ),
        ),
      ),
    );
  }
}
