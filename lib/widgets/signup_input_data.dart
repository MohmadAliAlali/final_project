import 'package:final_project/controller/authentication_controller/signup_controller/sign_up_validation.dart';
import 'package:final_project/core/constants/const_data.dart';
import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/widgets/authentication_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupInputData extends StatefulWidget {
  const SignupInputData({super.key});

  @override
  State<SignupInputData> createState() => _SignupInputDataState();
}

class _SignupInputDataState extends State<SignupInputData> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: ConstData.signUpGlobalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthenticationTextFormField(
              validation: (value) =>
                  SignUpValidation.SignUpNameValidation(value),
              textInputType: TextInputType.emailAddress,
              topPadding: 40.p.top,
              leftPadding: 24.p.left,
              rightPadding: 24.p.right,
              controller: ConstData.signUpNameController,
              hintText: 'Enter your name'),
          AuthenticationTextFormField(
              validation: (value) =>
                  SignUpValidation.signUpEmailValidation(value),
              textInputType: TextInputType.emailAddress,
              topPadding: 30.p.top,
              leftPadding: 24.p.left,
              rightPadding: 24.p.right,
              controller: ConstData.signUpEmailController,
              hintText: 'Enter your Email'),
          AuthenticationTextFormField(
              obscureText: true,
              validation: (value) =>
                  SignUpValidation.SignUpPasswordValidation(value),
              textInputType: TextInputType.emailAddress,
              topPadding: 30.p.top,
              leftPadding: 24.p.left,
              rightPadding: 24.p.right,
              controller: ConstData.signUpPasswordController,
              hintText: 'Enter your Password'),
        ],
      ),
    );
  }
}
