import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OverViewBox extends StatelessWidget {
  final Color color;
  final String heading, midText, bottomText;
  const OverViewBox({
    super.key,
    required this.color,
    required this.midText,
    required this.bottomText,
    required this.heading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 262.w, //width of box
      margin: EdgeInsets.only(right: 16.w), // spacing between cards
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(10.r),
        border: BoxBorder.all(color: Color(0xDEE1E6FF)),
      ),
      child: Padding(
        padding: EdgeInsets.all(49.w),
        child: Column(
          children: [
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: heading,
            ),
            SizedBox(height: 20.h),
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              text: midText,
            ),
            SizedBox(height: 20.h),
            TextInterFamily(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              text: bottomText,
            ),
          ],
        ),
      ),
    );
  }
}
