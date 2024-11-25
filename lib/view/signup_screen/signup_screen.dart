import 'package:final_project/controller/authentication_controller/signup_controller/sign_up_auth_controller.dart';
import 'package:final_project/core/constants/const_data.dart';
import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/signin_screen/signin_screen.dart';
import 'package:final_project/widgets/authentication_navigator_text.dart';
import 'package:final_project/widgets/authentication_validation_button.dart';
import 'package:final_project/widgets/authintication_with_google_and_apple.dart';
import 'package:final_project/widgets/signup_input_data.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';

class TaskySignUp extends StatefulWidget {
  const TaskySignUp({super.key});

  @override
  State<TaskySignUp> createState() => _TaskySignUpState();
}

class _TaskySignUpState extends State<TaskySignUp> {
  final GlobalKey<FormState> _signUpGlobalKey = GlobalKey<FormState>();

  @override
  void dispose() {
    ConstData.signUpEmailController.dispose();
    ConstData.signUpNameController.dispose();
    ConstData.signUpPasswordController.dispose();
    super.dispose();
  }

  void signUpAuth(BuildContext context) {
    SignUpAuthController.signUpAuth(
      _signUpGlobalKey,
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
                screenName: 'Sign Up',
                textLeftPadding: 88.p.left,
                onPressed: ()=>Navigation.goBack(context),

              ),
              Padding(
                padding: EdgeInsets.only(top: 40.h,left: 24.w),
                child: TaskyText.signUpWelcomeBack,
              ),
              Padding(
                padding: EdgeInsets.only(top: 12.h,left: 24.w),
                child: SizedBox(
                  width: 249.w,
                  height: 49.h,
                  child: TaskyText.signUpSubtitle1,
                ),
              ),

              SignupInputData(globalKey:_signUpGlobalKey ,),
              AuthenticationValidationButton(
                  authFunction: () => signUpAuth(context),
                  topPadding: 30.h,
                  buttonText: 'Sign Up'),
              AuthinticationWithGoogleAndApple(
                textLeftPadding: 149.w,
                textTopPadding: 40.h,
                text: TaskyText.signUpWith,
              ),
              AuthenticationNavigatorText(
                  targetPage: const TaskySigin(),
                  leftPadding: 104.w,
                  topPadding: 40.h,
                  authNavigatorOptionText: 'Have an Account?',
                  authNavigatorGoTo: ' Sign In')
            ],
          ),
        ),
      ),
    );
  }
}
