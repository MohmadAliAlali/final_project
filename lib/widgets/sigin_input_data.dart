import 'package:final_project/controller/authentication_controller/signin_controller/sign_in_validation.dart';
import 'package:final_project/core/constants/const_data.dart';
import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/widgets/authentication_text_form_field.dart';
import 'package:flutter/material.dart';

class SiginInputData extends StatefulWidget {
  const SiginInputData({super.key});

  @override
  State<SiginInputData> createState() => _SiginInputDataState();
}

class _SiginInputDataState extends State<SiginInputData> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: ConstData.signInGlobalKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AuthenticationTextFormField(
              validation: (value) =>
                  SignInValidation.signInEmailValidation(value),
              textInputType: TextInputType.emailAddress,
              topPadding: 40.p.top,
              leftPadding: 24.p.left,
              rightPadding: 24.p.right,
              controller: ConstData.signInEmailController,
              hintText: 'Enter your mail'),
          AuthenticationTextFormField(
              obscureText: true,
              validation: (value) =>
                  SignInValidation.SignInPasswordValidation(value),
              textInputType: TextInputType.text,
              topPadding: 30.p.top,
              leftPadding: 24.p.left,
              rightPadding: 24.p.right,
              controller: ConstData.signInPassowrdController,
              hintText: 'Enter your password'),
        ],
      ),
    );
  }
}
