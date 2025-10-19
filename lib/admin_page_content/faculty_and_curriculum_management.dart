import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/utils/my_check_box.dart';
import 'package:ai_schedular/utils/my_elevated_button.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FacultyAndCurriculumManagement extends StatelessWidget {
  const FacultyAndCurriculumManagement({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 1.sh,
      child: Container(
        width: 550.w, //width of box
        margin: EdgeInsets.only(right: 16.w), // spacing between cards
        decoration: BoxDecoration(
          color: Color(0xFFFFFFFF),
          borderRadius: BorderRadius.circular(10.r),
          border: BoxBorder.all(color: Color(0xDEE1E6FF)),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 51.h, vertical: 49.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextInterFamily(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                text: 'Faculty & Curriculum Managemen',
                textHeight: 1.4,
              ),
              5.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.42,
                text: 'Manage faculty availability and course offerings.',
              ),
              10.ht,
              Row(
                children: [
                  MyElevatedButton(text: 'Faculty Availability', width: 237.w),
                  MyElevatedButton(
                    text: 'Course Management',
                    width: 237.w,
                    buttonColor: Color(0x00000000),
                    textColor: Colors.black,
                  ),
                ],
              ),
              20.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.527,
                text: 'Faculty member:',
              ),
              5.ht,
              DropdownButtonFormField<String>(
                isExpanded: true,
                decoration: const InputDecoration(
                  hint: Text('Select Faculty'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xDEE1E6FF)),
                  ),
                ),
                items: ['Mr. Kranti Jain', 'Dr. C.S Sharma', 'Other']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
              ),
              20.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.527,
                text: 'Available Days:',
              ),
              5.ht,
              SizedBox(
                height: 200.h,
                child: Expanded(
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyCheckBox(),
                                  Text(
                                    'Monday',
                                    style: TextStyle(fontSize: 14.w),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyCheckBox(),
                                  Text(
                                    'Tuesday',
                                    style: TextStyle(fontSize: 14.w),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyCheckBox(),
                                  Text(
                                    'Wednesday',
                                    style: TextStyle(fontSize: 14.w),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyCheckBox(),
                                  Text(
                                    'Thursday',
                                    style: TextStyle(fontSize: 14.w),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  MyCheckBox(),
                                  Text(
                                    'Friday',
                                    style: TextStyle(fontSize: 14.w),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              20.ht,
              MyElevatedButton(text: 'Update Availability'),
            ],
          ),
        ),
      ),
    );
  }
}
