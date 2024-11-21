import 'package:final_project/core/services/respnsive.dart';
import 'package:final_project/view/home_screen/home_screen.dart';
import 'package:flutter/material.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({Key? key}) : super(key: key);

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int visit = 0;

  final List<Widget> pages = [
    MyHomePage(title: '',),
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
    final List<IconData> icons = [
      Icons.home,
      Icons.search_sharp,
      Icons.favorite_border,
      Icons.shopping_cart_outlined,
      Icons.account_box,
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
              child: Icon(
                icons[index],
                color:isCenter
                    ? Colors.white // لون ثابت للأيقونة المركزية
                    : (isSelected
                    ? const Color(0xffFF8500) // لون مختار للأيقونات الأخرى
                    : const Color(0xff848A94)),
                size: 24.e,
              ),
            ),
          );
        }),
      ),
    );
  }
}
