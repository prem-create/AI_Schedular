import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/utils/my_box.dart';
import 'package:ai_schedular/utils/my_data_table.dart';
import 'package:ai_schedular/utils/my_drop_down_button.dart';
import 'package:ai_schedular/utils/my_elevated_button.dart';
import 'package:ai_schedular/utils/my_text_field.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

//student information management box ,made here bacause i wanted to prevent cluttering so many things at one place
class StudentInformationManagementBox extends StatelessWidget {
  const StudentInformationManagementBox({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> topRowElements = ['ID', 'Name', 'Program'];

    List<List<String>> dataCell = [
      ['S001', 'Bhavesh Yaduvanshi', 'B.Tech CSE'],
      ['S002', 'Rahul Sahu', 'B.tech Mech'],
    ];
    return MyBox(
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

            MyDropDownButton(
              hint: 'Select Program',
              items: ['B.tech CSE', 'B.tech MECH', 'Other'],
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
            Expanded(
              child: SingleChildScrollView(
                child: MyDataTable(
                  dataCells: dataCell,
                  topRowElements: topRowElements,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
