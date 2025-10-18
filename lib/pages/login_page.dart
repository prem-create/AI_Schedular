import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 1.sw,
          height: 1.sh,
          color: Color.fromRGBO(200, 123, 241, 1),
        ),
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/login_background.png'),
              // alignment: Alignment(0, -0.1),
              fit: BoxFit.fill,
            ),
          ),
        ),

        BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 3,
            sigmaY: 3,
          ), // adjust blur intensity
          child: Container(
            color: Colors.black.withValues(
              alpha: 0,
            ), // must be present, can be transparent
          ),
        ),

        ///custom App Bar
        Container(
          margin: EdgeInsets.only(left: 16.w, top: 16.h),
          child: Row(
            children: [
              Container(
                width: 85.w,
                height: 85.h,
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('assets/A.png')),
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 20.w),
              Flexible(
                child: Text(
                  "AI Schedular",
                  style: TextStyle(
                    fontFamily: 'inter',
                    fontWeight: FontWeight.w700,
                    fontSize: 36.sp,
                    color: Color.fromRGBO(0, 0, 0, 1),
                    decoration: TextDecoration.none,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),

        Container(
          padding: EdgeInsets.only(top: 133.h, left: 80.w),
          width: .93.sw,
          height: .93.sh,
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.white,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  image: DecorationImage(
                    image: AssetImage('assets/login_popup_background.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ],
          ),
        ),

        ///content inside popup
        Padding(
          padding: EdgeInsets.only(top: 152.h, left: 113.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome Back To, \n AI-Schedular",
                style: TextStyle(
                  fontFamily: 'inter',
                  fontWeight: FontWeight.w700,
                  fontSize: 36.sp,
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),

              SizedBox(height: 80.h),

              Text(
                'Student ID/Admin ID',
                style: TextStyle(
                  fontFamily: 'JejuHallasan',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: .6.sw),
                child: Card(
                  elevation: 20,
                  color: Colors.white,
                  child: SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hint: Text('Student ID/Admin ID'),
                        hintStyle: TextStyle(
                          fontFamily: 'JejuHallasan',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 80.h),

              Text(
                'Password',
                style: TextStyle(
                  fontFamily: 'JejuHallasan',
                  fontWeight: FontWeight.w400,
                  fontSize: 20.sp,
                  decoration: TextDecoration.none,
                  color: Color.fromRGBO(0, 0, 0, 1),
                ),
              ),

              Padding(
                padding: EdgeInsets.only(right: .6.sw),
                child: Card(
                  elevation: 20,
                  color: Colors.white,
                  child: SizedBox(
                    height: 50.h,
                    width: double.infinity,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        hint: Text('password'),
                        hintStyle: TextStyle(
                          fontFamily: 'JejuHallasan',
                          fontWeight: FontWeight.w400,
                          fontSize: 20.sp,
                          decoration: TextDecoration.none,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 40.h),
              Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromRGBO(158, 21, 193, 1),
                    ),
                    onPressed: () => context.go('/admin'),
                    child: Text(
                      'LOGIN',
                      style: TextStyle(
                        fontFamily: 'Impact',
                        fontWeight: FontWeight.w400,
                        fontSize: 36.sp,
                        color: Color.fromRGBO(255, 255, 255, 1),
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                  SizedBox(width: 10.w),

                  ///forgot password
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot Password',
                      style: TextStyle(
                        fontFamily: 'JejuHallasan',
                        fontWeight: FontWeight.w400,
                        fontSize: 20.sp,
                        decoration: TextDecoration.none,
                        color: Color.fromRGBO(122, 105, 105, 1),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
