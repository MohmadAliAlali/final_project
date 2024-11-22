import 'package:final_project/controller/authentication_controller/signin_controller/sign_in_authentication_controller.dart';
import 'package:final_project/controller/authentication_controller/signup_controller/sign_up_auth_controller.dart';
import 'package:final_project/core/constants/app_icons.dart';
import 'package:final_project/core/constants/const_data.dart';
import 'package:final_project/core/constants/taskcy_color.dart';
import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/view/screens/authentication/signin/tasky_sigin.dart';
import 'package:final_project/widgets/authentication_navigator_text.dart';
import 'package:final_project/widgets/authentication_validation_button.dart';
import 'package:final_project/widgets/authintication_with_google_and_apple.dart';
import 'package:final_project/widgets/signup_input_data.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text.dart';
import 'package:flutter/material.dart';

class TaskySignUp extends StatefulWidget {
  const TaskySignUp({super.key});

  @override
  State<TaskySignUp> createState() => _TaskySignUpState();
}

class _TaskySignUpState extends State<TaskySignUp> {
  @override
  void dispose() {
    ConstData.signUpEmailController.dispose();
    ConstData.signUpNameController.dispose();
    ConstData.signUpPasswordController.dispose();
    super.dispose();
  }

  void signUpAuth(BuildContext context) {
    SignUpAuthController.signUpAuth(
      ConstData.signUpGlobalKey,
      context,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TasckcyColor.taskySignUpBackgroundColor,
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
                screenName: 'Sign Up',
                textLeftPadding: 88.p.left,
              ),
              TaskyText(
                topPadding: 40.p.top,
                leftPadding: 24.p.left,
                text: 'Create Account',
                textStyle: TextStyle(
                    fontWeight: FontWeight.w600,
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
                text: 'Please Inter your Informatioin and ',
              ),
              TaskyText(
                leftPadding: ScreenUtil.screenWidth * 24,
                textStyle: TextStyle(
                    color: const Color(0xff868D95),
                    fontWeight: FontWeight.w400,
                    fontSize: 14.w),
                text: 'create your account ',
              ),
              const SignupInputData(),
              AuthenticationValidationButton(
                  authFunction: () => signUpAuth(context),
                  topPadding: 30.p.top,
                  buttonText: 'Sign Up'),
              AuthinticationWithGoogleAndApple(
                textLeftPadding: 149.p.left,
                textTopPadding: 40.p.top,
                text: 'Signup With',
              ),
              AuthenticationNavigatorText(
                  targetPage: const TaskySigin(),
                  leftPadding: 97.p.left,
                  topPadding: 40.p.top,
                  authNavigatorOptionText: 'Have an Account?',
                  authNavigatorGoTo: ' Sign In')
            ],
          ),
        ),
      ),
    );
  }
}
