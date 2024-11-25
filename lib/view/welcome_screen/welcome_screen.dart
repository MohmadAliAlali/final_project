import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_images.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/welcome_screen/on_board_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  WelcomeScreenState createState() => WelcomeScreenState();
}

class WelcomeScreenState extends State<WelcomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: Stack(
        children: [
          Positioned(
            top: 177.h,
            left: 68.w,
            right: 68.92.w,
            bottom: 590.91.h,
            child: SvgPicture.asset(TaskyImages.focalTextSvg,
              width: 238.08.w ,
              height: 44.09.h,
              fit: BoxFit.fill,
              clipBehavior: Clip.antiAliasWithSaveLayer,),
          ),
          Positioned(
            top: 0.h,
            left: 65.w,
            right: 0.w,
            bottom: 411.11.h,
            child: SvgPicture.asset(
              TaskyImages.circleTextSvg,
              width: 393.92.w,
              height: 412.99.h,
              fit: BoxFit.fill,
              clipBehavior: Clip.antiAliasWithSaveLayer,
            ),
          ),
          Positioned(
            top: 390.h,
            left: 153.w,
            right: 177.w,
            bottom: 416.h,
            child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              Container(
                width: 25.w,
                height: 5.e,
                decoration: BoxDecoration(
                  color: TaskyColor.orange,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              SizedBox(width: 5.e,),

              Container(
                width: 5.e,
                height: 5.e,
                decoration: BoxDecoration(
                  color: TaskyColor.lightOrange,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
              SizedBox(width: 5.e,),
              Container(
                width: 5.e,
                height: 5.e,
                decoration: BoxDecoration(
                  color: TaskyColor.lightOrange,
                  borderRadius: BorderRadius.circular(12.r),
                ),
              )
            ]
          ),
          ),
          Positioned(
            top: 418.h,
              right:40.w ,
              left: 40.w,
              child: SizedBox(
                width:395.w ,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                      TaskyText.artBoardAppTitle,
                    TaskyText.artBoardBuildingBetter,
                    SizedBox(height: 10.h,),
                    TaskyText.artBoardCreate,

                  ],
                ),
              )
          ),
          Positioned(
              bottom: 48.h,
              left: 65.w,
              child: Container(
                width: 245.w,
                height:60.h ,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orange.withOpacity(0.5), // لون الظل مع شفافية
                      spreadRadius: 10.e, // مدى انتشار الظل
                      blurRadius: 20, // مدى التمويه
                      offset: const Offset(0, 0),
                    ),
                  ],
                ),
              )
          ),
          Positioned(
            top: 696.h,
              bottom: 56.h,
              left: 40.w,
              right: 40.w,
              child: GestureDetector(
            onTap: (){
              Navigation.navigateAndRemove(context,const  OnBoardScreen());
            },
            child: Container(
              width : 295.w,
              height: 60.h,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  gradient:const  LinearGradient(
                    begin: Alignment.bottomRight, // نقطة البداية (يمين سفلي)
                    end: Alignment.topLeft, // نقطة النهاية (يسار علوي)
                    colors: [
                      Colors.orange, // اللون الأول
                      Colors.orangeAccent, // اللون الثاني
                    ],
                  ),

                  borderRadius: BorderRadius.circular(8.r)
              ),
              child: TaskyText.artBoardGetStartedButton,
            ),
          )
          ),
        ],
      ),
    );
  }
}
