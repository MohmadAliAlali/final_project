import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/constants/tasky_text_style.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/core/services/state_manager.dart';
import 'package:final_project/view/signup_screen/signup_screen.dart';
import 'package:final_project/view/welcome_screen/data/map_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OnBoardScreen extends StatefulWidget {
  const OnBoardScreen({super.key});

  @override
  State<OnBoardScreen> createState() => _OnBoardScreenState();
}

class _OnBoardScreenState extends State<OnBoardScreen> {

  final PageController _pageController = PageController();
  int currentIndex = 0;

  final List<Map<String, dynamic>> screens =MapData.screens;
  void _goToNextPage() {
    if (currentIndex < screens.length - 1) {
      _pageController.animateToPage(
        currentIndex + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    } else {
      AppState.firstUse();
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => const TaskySignUp()),
      );

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
            },
            itemCount: screens.length,
            itemBuilder: (context, index) {
              return screens[index]['head'];
            },
          ),
          Positioned(
            top: 498.h,
            left: 30.w,
            child: SizedBox(
              width: 288.w,
              height: 163.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  screens[currentIndex]['title'],
                  screens[currentIndex]['first text'],
                  Row(
                    children: [
                      screens[currentIndex]['color text'],
                      screens[currentIndex]['three text'],
                    ],
                  ),
                  screens[currentIndex]['fore text'],
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.w, top: 668.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    screens.length,
                        (index) => AnimatedContainer(
                      duration: const Duration(milliseconds: 300),
                      margin: EdgeInsets.symmetric(horizontal: 3.5.w),
                      width: currentIndex == index ? 20.w : 8.w,
                      height: currentIndex == index ? 6.w : 8.w,
                      decoration: BoxDecoration(
                        color: currentIndex == index
                            ? TaskyColor.orange
                            : TaskyColor.lightOrange4,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 57.h),
                GestureDetector(
                  onTap: (){
                    Navigation.navigateAndRemove(context, const TaskySignUp());
                  },
                    child: TaskyText.onboardSkipButton),
              ],
            ),
          ),
          Positioned(
            bottom: 0.h,
            right: 0.w,
            child: GestureDetector(
              onTap: _goToNextPage,
              child: SvgPicture.asset(
                TaskyImages.nextButton,
                width: 129.w,
                height: 161.h,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

