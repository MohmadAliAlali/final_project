import 'package:final_project/core/constans/tasky_icons.dart';
import 'package:final_project/core/services/navigation.dart';
import 'package:final_project/view/nav_bar_page.dart';
import 'package:final_project/widgets/tasky_button_add.dart';
import 'package:final_project/widgets/tasky_button_add_page.dart';
import 'package:final_project/widgets/tasky_button_profile.dart';
import 'package:final_project/widgets/tasky_button_user_profile.dart';
import 'package:final_project/widgets/tasky_button_with_swich.dart';
import 'package:final_project/widgets/tasky_container_state.dart';
import 'package:final_project/widgets/tasky_text_form_filed_with_text.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  TextEditingController _controller = TextEditingController();
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              TaskyIcons.homeUnClick
            // const Text(
            //   'You have pushed the button this many times:',
            // ),
            // Text(
            //   '$_counter',
            //   style: Theme.of(context).textTheme.headlineMedium,
            // ),
            // TaskyButtonUserProfile(onPressed: () {  },
            //   child: Text('data'),),
            // SizedBox(height: 20,),
            // TaskyButtonWithSwitch(onPressed: () {  },
            //   child: Text('data'),),
            // SizedBox(height: 20,),
            // TaskyTextFormFiledWithText(
            //   controller: _controller,
            //   hintText: 'hello',
            //   text: 'hello',),
            // SizedBox(height: 20,),
            // TaskyContainerState(
            //   onPressed: () {  },
            //   icon: Icons.import_contacts_outlined,
            //   child: Text('data'),
            // )
          ],
        ),
      ),

    );
  }
}
