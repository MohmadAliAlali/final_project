import 'package:final_project/core/constants/const_data.dart';
import 'package:flutter/material.dart';

class SignInAuthenticationController {
  static void signInAuth(
      GlobalKey<FormState> signInGlobalKey, BuildContext context) {
    try {
      if (signInGlobalKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text('Validation successful'),
          ),
        );
        ConstData.signInEmailController.clear();
        ConstData.signInPassowrdController.clear();
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.red,
            content: Text('Validation failed: Please check the fields'),
          ),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          content: Text('An error occurred: ${e.toString()}'),
        ),
      );
    }
  }
}
