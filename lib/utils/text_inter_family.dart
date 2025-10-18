import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInterFamily extends StatelessWidget {
  final String text;
  final int fontSize;
  final FontWeight fontWeight;
  const TextInterFamily({
    super.key,
    required this.fontSize,
    required this.fontWeight,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontFamily: 'inter',
        fontWeight: fontWeight,
        fontSize: fontSize.sp,
        color: Colors.black,
        decoration: TextDecoration.none,
      ),
    );
  }
}
