import 'package:flutter/material.dart';

class ConstData {
  static TextEditingController signInEmailController = TextEditingController();
  static TextEditingController signInPassowrdController =
      TextEditingController();
  static GlobalKey<FormState> signInGlobalKey = GlobalKey<FormState>();
  static TextEditingController signUpNameController = TextEditingController();
  static TextEditingController signUpEmailController = TextEditingController();
  static TextEditingController signUpPasswordController =
      TextEditingController();
  static GlobalKey<FormState> signUpGlobalKey = GlobalKey<FormState>();
}
