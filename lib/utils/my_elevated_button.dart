import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyElevatedButton extends StatelessWidget {
  final String text;
  final double width;
  final Color buttonColor, textColor;

  const MyElevatedButton({
    super.key,
    required this.text,
    this.width = double.infinity,
    this.buttonColor = const Color.fromARGB(255, 2, 8, 61),
    this.textColor = Colors.white,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40.h,
      width: width.w,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
        ),
        onPressed: () {},
        child: TextInterFamily(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          text: text,
          textHeight: 1.5,
          color: textColor,
        ),
      ),
    );
  }
}
