import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1500,1024),
      builder: (context, child) => MaterialApp.router(
      title: 'AI_schedular',
      routerConfig: appRouter,
      debugShowCheckedModeBanner: false,
  ),
    );
  }
}
