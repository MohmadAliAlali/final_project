import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_images.dart';
import 'package:final_project/core/constans/tasky_text.dart';
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
                textLeftPadding: 91.w,
              ),
              SizedBox(height: 40.h),
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  Container(
                    width: 132.w,
                    height: 132.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(TaskyImages.Group18060),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(6.w),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.black,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 4,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: TaskcySvg(
                      svgHeight: 18.h,
                      TaskcySvgLink: 'assets/icons/camera.svg',
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20.h),
              TaskyTextFormFiledWithText(
                controller: _nameController,
                hintText: 'Alvart Ainstain',
                text: TaskyText.editProfileName,
              ),
              TaskyTextFormFiledWithText(
                controller: _emailController,
                hintText: 'albart.ainstain@gmail.com',
                text: TaskyText.editProfileEmail,
              ),
              TaskyTextFormFiledWithText(
                controller: _usernameController,
                hintText: '@albart.ainstain',
                text: TaskyText.editProfileUsername,
              ),
              TaskyTextFormFiledWithText(
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
