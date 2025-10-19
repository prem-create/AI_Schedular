import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/utils/my_data_table.dart';
import 'package:ai_schedular/utils/my_elevated_button.dart';
import 'package:ai_schedular/utils/text_field.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//student information management box ,made here bacause i wanted to prevent cluttering so many things at one place
class StudentInformationManagementBox extends StatelessWidget {
  const StudentInformationManagementBox({super.key});

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
              //Student ID
              TextInterFamily(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                textHeight: 1.4,
                text: 'Student Information Management',
              ),
              5.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.42,
                text: 'Add or update student records in the system',
              ),
              20.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.527,
                text: 'Student ID:',
              ),
              5.ht,
              MyTextField(hint: 'e.g., NEP2023001'),
              20.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.527,
                text: 'Student Name:',
              ),
              5.ht,
              MyTextField(hint: 'e.g., John Doe'),
              20.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.527,
                text: 'Program:',
              ),
              5.ht,
              DropdownButtonFormField<String>(
                decoration: const InputDecoration(
                  hint: Text('Select Program'),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Color(0xDEE1E6FF)),
                  ),
                ),
                items: ['B.tech CSE', 'B.tech MECH', 'Other']
                    .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                    .toList(),
                onChanged: (value) {},
              ),
              20.ht,
              TextInterFamily(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                textHeight: 1.527,
                text: 'Current Semester:',
              ),
              5.ht,
              MyTextField(hint: 'e.g., Fall 2024'),
              5.ht,
              MyElevatedButton(text: 'Add Student'),
              10.ht,
              Expanded(child: SingleChildScrollView(child: MyDataTable())),
            ],
          ),
        ),
      ),
    );
  }
}
