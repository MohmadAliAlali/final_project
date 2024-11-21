import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/services/respnsive.dart';
import 'package:final_project/view/home_screen/home_screen.dart';
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
    const MyHomePage(title: '',),
    const Scaffold(body: Center(child: Text("Shop Page"))),
    const Scaffold(body: Center(child: Text("Wishlist Page"))),
    const Scaffold(body: Center(child: Text("Cart Page"))),
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
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            spreadRadius: 2,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: List.generate(icons.length, (index) {
          final bool isCenter = index == 2; // تحديد العنصر الأوسط
          final bool isSelected = visit == index;

          return GestureDetector(
            onTap: () {
              setState(() {
                visit = index;
              });
            },
            child: Container(
              width:  50.w,
              height: 50.h,
              padding: EdgeInsets.all(11.e),
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
              child:isSelected? clickIcons[index]:icons[index],
            ),
          );
        }),
      ),
    );
  }
}
