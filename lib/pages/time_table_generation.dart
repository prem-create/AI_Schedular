import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/time_table_generation_page_content/generation_status.dart';
import 'package:ai_schedular/time_table_generation_page_content/time_table_parameters.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:ai_schedular/widgets/app_drawer.dart';
import 'package:ai_schedular/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TimetableGeneration extends StatelessWidget {
  const TimetableGeneration({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(width: 254.sp, child: AppDrawer())],
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                30.ht,
                TextInterFamily(
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                  text: 'Timetable Generation',
                  textHeight: 1.2,
                ),
                20.ht,
                Container(
                  height: 200,
                  width: 1100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/time_table_genertion.png',
                      ),
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                100.ht,

                Row(
                  children: [
                    //timetable parameters
                    TimeTableParameters(),
                    GenerationStatus(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
