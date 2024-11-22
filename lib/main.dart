import 'package:final_project/core/services/media_query_util.dart';
import 'package:final_project/view/screens/authentication/signin/tasky_sigin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TaskySigin(),
    );
  }
}
