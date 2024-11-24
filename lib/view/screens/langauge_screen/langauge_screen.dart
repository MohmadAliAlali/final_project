import 'package:final_project/widgets/tasky_header.dart';
import 'package:final_project/widgets/tasky_svg.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/constans/tasky_color.dart';
import 'package:final_project/core/constans/tasky_text.dart';
import 'package:final_project/core/services/responsive.dart';
import '../../../core/services/navigation.dart';
import '../../../widgets/tasky_button_root.dart';

class LangaugeScreen extends StatefulWidget {
  const LangaugeScreen({super.key});

  @override
  State<LangaugeScreen> createState() => _LangaugeScreenState();
}

class _LangaugeScreenState extends State<LangaugeScreen> {
  String selectedLanguage = "English";
  final List<Text> languages = [
    TaskyTexts.languageEnglish,
    TaskyTexts.languageArabic,
    TaskyTexts.languageSpanish,
    TaskyTexts.languageFrance,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      body: Column(
        children: [
          TaskcyHeader(
            onPressed: () {
              Navigation.goBack(context);
            },
            svgIconOne: TaskySvg(
                svgWidth: 20.w,
                svgHeight: 20.h,
                TaskySvgLink: 'assets/icons/back_arrow_ios.svg'),
            isbuttonTwoShow: false,
            isButtonText: true,
            isButtonContainer: false,
            istextShow: true,
            screenName: 'Sign In',
            textLeftPadding: 91.w,
          ),
          Expanded(
            child: Padding(
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
                        onPressed: () {
                          setState(() {
                            selectedLanguage = language.data ?? "";
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            language,
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  selectedLanguage = language.data ??
                                      ""; // تعيين القيمة عند التحديد
                                });
                              },
                              child: Container(
                                width: 20.e,
                                height: 20.e,
                                margin: EdgeInsets.only(right: 18.w),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: selectedLanguage ==
                                            (language.data ?? "")
                                        ? TaskyColor.orange // اللون عند التحديد
                                        : TaskyColor.gray_2, // اللون الافتراضي
                                    width: 1.e, // عرض الحدود
                                  ),
                                ),
                                child: Center(
                                  child: Container(
                                    width: 15.e, // حجم الدائرة الداخلية
                                    height: 15.e,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: selectedLanguage ==
                                              (language.data ?? "")
                                          ? TaskyColor
                                              .orange // لون الدائرة الداخلية عند التحديد
                                          : Colors
                                              .transparent, // شفاف إذا لم يكن محددًا
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20.h),
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
