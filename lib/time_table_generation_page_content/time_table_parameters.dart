import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/utils/my_box.dart';
import 'package:ai_schedular/utils/my_check_box.dart';
import 'package:ai_schedular/utils/my_drop_down_button.dart';
import 'package:ai_schedular/utils/my_rating_slider.dart';
import 'package:ai_schedular/utils/text_field.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:flutter/material.dart';

class TimeTableParameters extends StatelessWidget {
  const TimeTableParameters({super.key});

  @override
  Widget build(BuildContext context) {
    return MyBox(
      height: 1.5,
      width: 715,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextInterFamily(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              textHeight: 1.4,
              text: 'Generation Parameters',
            ),
            10.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              textHeight: 1.42,
              text:
                  'Define the scope and preferences for the AI-powered timetable generation.',
            ),
            30.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Academic Year',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: 1990-1991',
                        items: ['2025-2026', '2026-2027', 'other'],
                      ),
                    ],
                  ),
                ),
                10.wt,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Academic Year',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: 1st, 2nd, 3rd, 4th',
                        items: [
                          '1st',
                          '2nd',
                          '3rd',
                          '4th',
                          '5st',
                          '6nd',
                          '7rd',
                          '8th',
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            30.ht,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Department',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: Computer Science',
                        items: [
                          'Computer Science and Engineering',
                          'Civil Engineering',
                          'other',
                        ],
                      ),
                    ],
                  ),
                ),
                10.wt,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TextInterFamily(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        text: 'Program of Study',
                        textHeight: 1,
                      ),
                      10.ht,
                      MyDropDownButton(
                        hint: 'eg: B.ed',
                        items: ['B.tech', 'B.ed', 'other'],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            30.ht,
            MyRatingSlider(),
            10.ht,
            TextInterFamily(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              text:
                  'Higher levels prioritize efficiency, lower levels prioritize specific constraints more heavily.',
              textHeight: 1.33,
            ),
            30.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: 'Conflict Avoidance Priority',
              textHeight: 1,
            ),
            10.ht,
            MyDropDownButton(
              hint: 'High (Strictly No Overlaps)',
              items: ['High (Strictly No Overlaps)', 'Medium', 'low'],
            ),
            30.ht,
            TextInterFamily(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              text: 'Advance Options',
              textHeight: 1.55,
            ),
            30.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Consider Faculty Preferred Timings',
                  textHeight: 1.57,
                ),
              ],
            ),
            30.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Prioritize Optimal Room Utilization',
                  textHeight: 1.57,
                ),
              ],
            ),
            30.ht,
            Row(
              children: [
                MyCheckBox(),
                TextInterFamily(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  text: 'Enable AI-driven Course Grouping Suggestions',
                  textHeight: 1.57,
                ),
              ],
            ),
            30.ht,
            TextInterFamily(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              text: 'Additional Constraints (Optional)',
              textHeight: 1,
            ),
            20.ht,
            MyTextField(
              hint:
                  'E.g., Ensure all 3rd-year CS core courses are scheduled before 1 PM, Exclude Room 101 for labs on Thursdays.\n\n\n\n',
            ),
            20.ht,
            TextInterFamily(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              text:
                  'Provide any specific rules or preferences not covered by the options above.',
              textHeight: 1.33,
            ),
          ],
        ),
      ),
    );
  }
}
