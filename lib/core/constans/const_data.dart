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
  static Map<int, String> taskyTodayCalender = {
    11: "Wed",
    12: "Thu",
    13: "Fri",
    14: "Sat",
    15: "Sun",
    16: "Mon",
    17: "Tue",
  };
}
