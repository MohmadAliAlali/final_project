import 'package:flutter/material.dart';
import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/services/responsive.dart';
import '../../core/services/navigation.dart';
import '../../widgets/tasky_button_root.dart';

class LangaugeScreen extends StatefulWidget {
  const LangaugeScreen({super.key});

  @override
  State<LangaugeScreen> createState() => _LangaugeScreenState();
}

class _LangaugeScreenState extends State<LangaugeScreen> {
  String selectedLanguage = "English";
  final List<Text> languages = [
    TaskyText.langauge_english,
    TaskyText.langauge_arabic,
    TaskyText.langauge_spanish,
    TaskyText.langauge_france,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        centerTitle: true,
        title: TaskyText.langauge_title,
        backgroundColor: TaskyColor.white,
        leading: Padding(
          padding: EdgeInsets.only(left: 24.w),
          child: Container(
            width: 42.w,
            height: 42.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: TaskyColor.gray2,
                width: 1.w,
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigation.goBack(context);
              },
              icon: TaskyIcons.backArrowIos,
            ),
          ),
        ),
      ),
      body: Padding(
        padding: 24.p,
        child: ListView.builder(
          itemCount: languages.length,
          itemBuilder: (context, index) {
            final language = languages[index];
            bool isSelected = selectedLanguage == language.data;

            return Column(
              children: [
                TaskyButtonRoot(
                    color: TaskyColor.white,
                    paddingLeft: 20.w,

                  onPressed: () { setState(() {
                    selectedLanguage = language.data ?? "";
                  }); },
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      language,
                      Radio<String>(
                        value: language.data ?? "",
                        groupValue: selectedLanguage,
                        onChanged: (value) {
                          setState(() {
                            selectedLanguage = value ?? "";
                          });
                        },
                        activeColor: TaskyColor.orange,
                        fillColor:
                        MaterialStateProperty.resolveWith<Color>(
                              (states) {
                            if (states.contains(MaterialState.selected)) {
                              return TaskyColor.orange;
                            }
                            return TaskyColor.gray2;
                          },),
                      ),
                    ],
                  ),),
               SizedBox(height: 20.h),
              ],
            );
          },
        ),
      ),
    );
  }}
