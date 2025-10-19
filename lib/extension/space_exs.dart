import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension IntExtension on int? {
  int validate({int value = 0}) {
    return this ?? value;
  }

  Widget get ht => SizedBox(height: this?.toDouble().h);

  Widget get wt => SizedBox(width: this?.toDouble().w);
}
