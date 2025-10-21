import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/utils/my_box.dart';
import 'package:ai_schedular/utils/my_check_box.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';

class GenerationStatus extends StatelessWidget {
  const GenerationStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBox(
      height: 1.5,
      width: 455,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Generation Status',
            ),
            10.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textHeight: 1.42,
              text:
                  'Review data readiness and current configuration before starting the process.',
            ),
            30.ht,
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Data Readiness Checklist',
            ),
            30.ht,
            Column(
              children: [
                Row(
                  children: [
                    MyCheckBox(),
                    TextInterFamily(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: 'student Enrollments',
                      textHeight: 1.5,
                    ),
                  ],
                ),
                10.ht,
                Row(
                  children: [
                    MyCheckBox(),
                    TextInterFamily(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: 'faculty Availability',
                      textHeight: 1.5,
                    ),
                  ],
                ),
                10.ht,
                Row(
                  children: [
                    MyCheckBox(),
                    TextInterFamily(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: 'course Offerings',
                      textHeight: 1.5,
                    ),
                  ],
                ),
                10.ht,
                Row(
                  children: [
                    MyCheckBox(),
                    TextInterFamily(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: 'room Capacity',
                      textHeight: 1.5,
                    ),
                  ],
                ),
                10.ht,
                Row(
                  children: [
                    MyCheckBox(),
                    TextInterFamily(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      text: 'curriculum Structure',
                      textHeight: 1.5,
                    ),
                  ],
                ),
                10.ht,
              ],
            ),
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Current Settings Summary',
            ),
            30.ht,
            DataTable(
              columns: [
                DataColumn(label: Text('Year:')),
                DataColumn(label: Text('2024-2025')),
              ],
              rows: [
                DataRow(
                  cells: [
                    DataCell(Text('Semester:')),
                    DataCell(Text('Fall 2024')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Department:')),
                    DataCell(Text('Computer Science')),
                  ],
                ),
                DataRow(
                  cells: [DataCell(Text('Program:')), DataCell(Text('B.tech'))],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Optimization:')),
                    DataCell(Text('75%')),
                  ],
                ),
                DataRow(
                  cells: [
                    DataCell(Text('Conflict Priority:')),
                    DataCell(Text('High')),
                  ],
                ),
              ],
            ),
            30.ht,
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Estimated Generation Time',
            ),
            30.ht,
            TextInterFamily(
              fontSize: 24,
              color: Colors.blueAccent,
              fontWeight: FontWeight.w700,
              textHeight: 1.4,
              text: '5 Minutes',
            ),
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textHeight: 1.42,
              text:
                  'Time may vary based on data complexity and selected optimization level.',
            ),
          ],
        ),
      ),
    );
  }
}
