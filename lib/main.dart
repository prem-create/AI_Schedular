import 'package:ai_schedular/pages/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1500,1024),
      builder: (context, child) => MaterialApp(
      title: 'AI_schedular',
      debugShowCheckedModeBanner: false,
      home: child,
  ),
      child: const MyHomePage(),
    );
  }
}
