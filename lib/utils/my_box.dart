import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyBox extends StatelessWidget {
  final Widget child;
  final double height, width;
  const MyBox({
    super.key,
    required this.child,
    this.height = 1,
    this.width = 500,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height.sh,
      child: Container(
        width: width.w, //width of box
        margin: EdgeInsets.only(right: 16.w), // spacing between cards
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10.r),
          border: BoxBorder.all(color: Color(0xDEE1E6FF)),
        ),
        child: child,
      ),
    );
  }
}
