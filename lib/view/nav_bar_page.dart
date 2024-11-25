import 'package:final_project/core/constants/tasky_color.dart';
import 'package:final_project/core/constants/tasky_icons.dart';
import 'package:final_project/core/constants/tasky_text.dart';
import 'package:final_project/core/services/responsive.dart';
import 'package:final_project/view/chat_screen/chat_screen.dart';
import 'package:final_project/view/home_screen/home_screen.dart';
import 'package:final_project/widgets/tasky_button_add.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int visit = 0;

  final List<Widget> pages = [
    const MyHomePage(),
    const ChatScreen(),
    const Scaffold(body: Center(child: Text("Wishlist Page"))),
    const ChatScreen(),
    const Scaffold(body: Center(child: Text("Profile Page"))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[visit],
      bottomNavigationBar: _buildCustomNavBar(),
    );
  }

  Widget _buildCustomNavBar() {
    final List<SvgPicture> icons = [
      TaskyIcons.homeUnClick,
      TaskyIcons.folderUnClick,
      TaskyIcons.add,
      TaskyIcons.chatUnClick,
      TaskyIcons.profileUnClick,
    ];
    final List<SvgPicture> clickIcons = [
      TaskyIcons.homeClick,
      TaskyIcons.folderClick,
      TaskyIcons.add,
      TaskyIcons.chatClick,
      TaskyIcons.profileClick,
    ];
    return Container(
      height: 82.h,
      color: Colors.white,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          final bool isCenter = index == 2;
          final bool isSelected = visit == index;

          return GestureDetector(
            onTap: () {
              if (isCenter) {
                // Action for center button
                _showModalBottomSheet(); // Example: open a bottom sheet
              } else {
                // Regular navigation for other items
                setState(() {
                  visit = index;
                });
              }
            },
            child: Container(
              width: 50.w,
              height: 50.h,
              padding: EdgeInsets.fromLTRB(11.w, 11.h, 11.w, 11.h),
              decoration: isCenter
                  ? BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.orange,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 4,
                    spreadRadius: 1,
                    offset: const Offset(0, 4),
                  ),
                ],
              )
                  : null,
              child: isSelected ? clickIcons[index] : icons[index],
            ),
          );
        }),
      ),
    );
  }
  void _showModalBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape:  RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30.r),
        ),
      ),
      builder: (context) {
        return  Container(
          decoration: BoxDecoration(
              color: TaskyColor.white,
            borderRadius: BorderRadius.only(topLeft:Radius.circular(30.r),topRight: Radius.circular(30.r),)
          ),
          child: Padding(
            padding:  EdgeInsets.fromLTRB(24.w,16.0.h,24.w,16.h),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 4.h,
                  width: 42.w,
                  margin: EdgeInsets.only(bottom: 30.h),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color(0xffDFDFDF),

                  ),
                ),
                TaskyButtonAdd(
                  onPressed: () {  },
                  text: TaskyText.addCreateTask,
                  icon: TaskyIcons.editSquareAddScreen,
                ),
                SizedBox(height: 20.h,),
                TaskyButtonAdd(
                  onPressed: () {  },
                  text: TaskyText.addCreateProject,
                  icon: TaskyIcons.plusAddScreen,
                ),
                SizedBox(height: 20.h,),

                TaskyButtonAdd(
                  onPressed: () {  },
                  text: TaskyText.addCreateTeam,
                  icon: TaskyIcons.groupUsers,
                ),
                SizedBox(height: 20.h,),

                TaskyButtonAdd(
                  onPressed: () {  },
                  text: TaskyText.addCreateEvent,
                  icon: TaskyIcons.timeCircleAddScreen,
                ),
                Container(
                  width: 50.w,
                  height: 50.h,
                  padding: EdgeInsets.fromLTRB(11.w, 11.h, 11.w, 11.h),
                  margin: EdgeInsets.only(top: 13.h),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: TaskyColor.orange,
                    border: Border.all(color: TaskyColor.lightOrange3,width: 1.e),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        blurRadius: 4,
                        spreadRadius: 1,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: TaskyIcons.falseMarkAddScreen,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
