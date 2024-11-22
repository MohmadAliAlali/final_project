import 'package:final_project/widgets/tasky_form_field.dart';
import 'package:flutter/material.dart';
import 'package:final_project/core/constans/tasky_color.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  bool _switchLanguage = false;
  bool _switchPermissions = false;
  bool _switchHelp = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: TaskyColor.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios,
            color: TaskyColor.black1,
            size: 18,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          'Settings',
          style: TextStyle(
            color: TaskyColor.black1,
            fontFamily: 'Poppins',
            fontSize: 18,
            fontWeight: FontWeight.w500,
            height: 1.0,
            decoration: TextDecoration.none,
          ),
        ),
        centerTitle: true,
        backgroundColor: TaskyColor.white,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              CustomWidgets.buildSwitchField('Permission', _switchLanguage,
                  (value) {
                setState(() {
                  _switchLanguage = value;
                });
              }),
              const SizedBox(height: 20),
              CustomWidgets.buildSwitchField(
                  'Push Notification', _switchPermissions, (value) {
                setState(() {
                  _switchPermissions = value;
                });
              }),
              const SizedBox(height: 20),
              CustomWidgets.buildSwitchField('Dark Mode', _switchHelp, (value) {
                setState(() {
                  _switchHelp = value;
                });
              }),
              const SizedBox(height: 20),
              CustomWidgets.buildTextField('Security'),
              const SizedBox(height: 20),
              CustomWidgets.buildTextField('Help'),
              const SizedBox(height: 20),
              CustomWidgets.buildTextField('Language'),
              const SizedBox(height: 20),
              CustomWidgets.buildTextField('About Application'),
            ],
          ),
        ),
      ),
    );
  }
}
