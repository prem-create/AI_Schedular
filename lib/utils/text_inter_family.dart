import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInterFamily extends StatelessWidget {
  String text;
  int fontSize;
  FontWeight fontWeight;
  TextInterFamily(
    {
      super.key, 
      required this.fontSize, 
      required this.fontWeight, 
      required this.text
      }
    );

  @override
  Widget build(BuildContext context) {
    return  Text(text,
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