import 'package:final_project/core/constans/const_data.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/view/nav_bar_page.dart';
import 'package:flutter/material.dart';

class SignUpAuthController {
  static void signUpAuth(
      GlobalKey<FormState> signUpGlobalKey, BuildContext context) {
    try {
      if (signUpGlobalKey.currentState!.validate()) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            backgroundColor: Colors.green,
            content: Text('Validation successful'),
          ),
        );
        ConstData.signUpEmailController.clear();
        ConstData.signUpNameController.clear();
        ConstData.signUpPasswordController.clear();
        Navigation.navigateAndRemove(context,const NavBarPage());
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
