import 'package:final_project/controller/authentication_controller/signin_controller/sign_in_validation.dart';
import 'package:final_project/core/constants/const_data.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/authentication_text_form_field.dart';
import 'package:flutter/material.dart';

class SiginInputData extends StatefulWidget {
  final GlobalKey<FormState> globalKey;

  const SiginInputData({
    super.key,
    required this.globalKey});

  @override
  State<SiginInputData> createState() => _SiginInputDataState();
}

class _SiginInputDataState extends State<SiginInputData> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.globalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthenticationTextFormField(
              validation: (value) =>
                  SignInValidation.signInEmailValidation(value),
              textInputType: TextInputType.emailAddress,
              topPadding: 40.h,
              leftPadding: 24.w,
              rightPadding: 24.w,
              controller: ConstData.signInEmailController,
              hintText: 'Enter your mail'),
          AuthenticationTextFormField(
              obscureText: true,
              validation: (value) =>
                  SignInValidation.SignInPasswordValidation(value),
              textInputType: TextInputType.text,
              topPadding: 10.h,
              leftPadding: 24.w,
              rightPadding: 24.w,
              controller: ConstData.signInPassowrdController,
              hintText: 'Enter your password'),
        ],
      ),
    );
  }
}
