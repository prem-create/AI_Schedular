import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:ai_schedular/utils/over_view_box.dart';
import 'package:ai_schedular/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class AdminDashboard extends StatelessWidget {
  const AdminDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Admin Dashboard')),
      backgroundColor: Colors.white,
      body: Row(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [SizedBox(width: 254.sp, child: AppDrawer())],
          ),

          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 32, top: 33),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextInterFamily(
                    fontSize: 24,
                    fontWeight: FontWeight.w700,
                    text: 'Admin Dashboard Overview',
                  ),

                  //overview scroll view
                  SizedBox(
                    height: 350.h, // height of the card
                    child: ListView(
                      scrollDirection: Axis.horizontal, // horizontal scrolling
                      children: [
                        OverViewBox(
                          color: Color(0xF1F6FEFF),
                          heading: 'Total Enrolled Students',
                          midText: '1500',
                          bottomText: '+25% since last semester',
                        ),
                        OverViewBox(
                          color: Color(0xFFF3DEFF),
                          heading: 'Active Faculty Members',
                          midText: '75',
                          bottomText: 'All faculty available this semester',
                        ),
                        OverViewBox(
                          color: Color(0xFFECECFF),
                          heading: 'Total Courses Offered',
                          midText: '150',
                          bottomText: 'Across 12 departments',
                        ),
                        OverViewBox(
                          color: Color(0xE0FAF8FF),
                          heading: 'Upcoming Deadlines',
                          midText: '3 Critical',
                          bottomText: 'Next submission on Oct 15',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
