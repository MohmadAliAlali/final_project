import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:final_project/widgets/tasky_text_form_filed_with_text.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _usernameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              TaskcyHeader(
                onPressed: () {
                  Navigation.goBack(context);
                },
                svgIconOne: TaskcySvg(
                  svgWidth: 20.w,
                  svgHeight: 20.h,
                  TaskcySvgLink: 'assets/icons/back_arrow_ios.svg',
                ),
                isbuttonTwoShow: true,
                isButtonText: true,
                isButtonContainer: false,
                istextShow: true,
                screenName: 'Edit Profile',
                textLeftPadding: 74.w,
                textButtonOrContainerLeftPadding:82.w ,
              ),
              SizedBox(
                height: 212.h,
                width: 375.w,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Positioned(
                      top: 40.h,
                      left: 122.w,
                      right: 121.w,
                      child:  Container(
                        height: 132.h,
                        width: 132.w,
                        child: Image.asset(TaskyImages.userProfileEdit),
                      )
                    ),
                    Positioned(
                      top: 142.h,
                      // left: 216.w,
                      right: 140.w,
                      child: Container(
                        width: 26.r,
                        height: 26.r,
                        padding: 2.5.p,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: TaskyColor.white,width: 1.e),
                          color: TaskyColor.darkBlue,
                          boxShadow: [
                            BoxShadow(
                              color: TaskyColor.gray1.withOpacity(0.5),
                              blurRadius: 4.r,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                          child: TaskyIcons.cameraProfileScreen
                      ),
                    )
                  ],
                ),
              ),
              TaskyTextFormFiledWithText(
                color: TaskyColor.lightOrange2,
                controller: _nameController,
                hintText: 'Alvart Ainstain',
                text: TaskyText.editProfileName,
              ),
              TaskyTextFormFiledWithText(
                color: TaskyColor.lightOrange2,
                controller: _emailController,
                hintText: 'albart.ainstain@gmail.com',
                text: TaskyText.editProfileEmail,
              ),
              TaskyTextFormFiledWithText(
                color: TaskyColor.lightOrange2,
                controller: _usernameController,
                hintText: '@albart.ainstain',
                text: TaskyText.editProfileUsername,
              ),
              TaskyTextFormFiledWithText(
                color: TaskyColor.lightOrange2,
                controller: _phoneController,
                hintText: '+010 2120 112312',
                text: TaskyText.editProfileNumber,
              ),
            ],
          ),
        ),
      ),
    );
  }
}