import 'package:final_project/controller/authentication_controller/signin_controller/sign_in_authentication_controller.dart';
import 'package:final_project/core/constans/const_data.dart';
import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/constans/tasky_text_style.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/signup_screen/signup_screen.dart';
import 'package:final_project/widgets/authentication_navigator_text.dart';
import 'package:final_project/widgets/authentication_validation_button.dart';
import 'package:final_project/widgets/authintication_with_google_and_apple.dart';
import 'package:final_project/widgets/sigin_input_data.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
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
      backgroundColor: TaskyColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TaskcyHeader(
                svgIconOne: TaskcySvg(
                    svgWidth: 20.w,
                    svgHeight: 20.h,
                    TaskcySvgLink: 'assets/icons/back_arrow_ios.svg'),
                isbuttonTwoShow: false,
                isButtonText: true,
                isButtonContainer: false,
                istextShow: true,
                screenName: 'Sign In',
                textLeftPadding: 91.w,
              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h,left: 24.w),
                child: TaskyText.signInWelcomeBack,
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h,left: 24.w),
                child: SizedBox(
                  width: 249.w,
                  height: 49.h,
                  child: TaskyText.signInSubtitle1,
                ),
              ),
              const SiginInputData(),
              Padding(
                padding: EdgeInsets.only(top: 0.h, left: 226.w),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    'Forgot Password?',
                    style: TaskyTextStyle.text14darkBlue500,
                ),
              ),
              ),
              AuthenticationValidationButton(
                  authFunction: () => signInAuth(context),
                  topPadding: 30.h,
                  buttonText: 'Sign In'),
              AuthinticationWithGoogleAndApple(
                textLeftPadding: 149.w,
                textTopPadding: 60.h,
                text: TaskyText.signInWith,
              ),
              AuthenticationNavigatorText(
                  targetPage: const TaskySignUp(),
                  leftPadding: 97.w,
                  topPadding: 50.h,
                  authNavigatorOptionText: 'Not Registrar Yet?',
                  authNavigatorGoTo: ' Sign Up')
            ],
          ),
        ),
      ),
    );
  }
}
