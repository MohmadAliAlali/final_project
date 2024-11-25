import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:flutter/material.dart';

class MapData{
  static final List<Map<String, dynamic>> screens = [
    {
      'head': SizedBox(
          width: 375.w,
          height: 812.29.h,
          child: Image.asset(
            TaskyImages.onBoard1,
            width: 375.w,height: 812.29.h,
            fit: BoxFit.fill,
          )
      ),
      'title' :TaskyText.onboardTitle,
      'first text': TaskyText.onboard6Tagline1,
      'color text': TaskyText.onboard6Tagline2,
      'three text': TaskyText.onboard6Tagline3,
      'fore text': TaskyText.onboard6Tagline4,
    },
    {
      'head': SizedBox(
          width: 375.w,
          height: 812.29.h,
          child:
          Image.asset(
            TaskyImages.onBoard2,
            width: 375.w,height: 812.29.h,
            fit: BoxFit.fill,
          )
      ),
      'title' :TaskyText.onboardTitle,
      'first text': TaskyText.onboard5Tagline1,
      'color text': TaskyText.onboard5Tagline2,
      'three text': TaskyText.onboard5Tagline3,
      'fore text': TaskyText.onboard4Tagline4,
    },
    {
      'head': Container(
          width: 375.w,
          height: 460.29.h,
          color: Colors.orange,
          child: Image.asset(
            TaskyImages.onBoard3,
            width: 375.w,height: 812.29.h,
            fit: BoxFit.fill,
          )
      ),
      'title' :TaskyText.onboardTitle,
      'first text': TaskyText.onboard4Tagline1,
      'color text': TaskyText.onboard4Tagline2,
      'three text': TaskyText.onboard4Tagline3,
      'fore text': TaskyText.onboard4Tagline4,
    },
  ];
}