import 'package:ai_schedular/extension/space_exs.dart';
import 'package:ai_schedular/utils/my_box.dart';
import 'package:ai_schedular/utils/my_drop_down_button.dart';
import 'package:ai_schedular/utils/my_elevated_button.dart';
import 'package:ai_schedular/utils/text_inter_family.dart';
import 'package:ai_schedular/widgets/app_drawer.dart';
import 'package:ai_schedular/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ConflictAndScenerio extends StatelessWidget {
  const ConflictAndScenerio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(),
      body: Row(
        children: [
          AppDrawer(),
          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MyBox(
                    height: .2,
                    width: 1100,
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              TextInterFamily(
                                fontSize: 24,
                                fontWeight: FontWeight.w700,
                                text:
                                    'Conflict Resolution & Scenario\nSimulation',
                                textHeight: 1.33,
                              ),
                              10.ht,
                              TextInterFamily(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                                text:
                                    'Review, resolve, and simulate timetable adjustments.',
                                textHeight: 1.43,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  MyElevatedButton(
                                    text: 'Total: 3',
                                    buttonColor: const Color(0xFFF1F6FE),
                                    width: 150,
                                    textColor: Colors.black,
                                  ),
                                  5.wt,
                                  MyElevatedButton(
                                    text: 'Critical: 2',
                                    buttonColor: const Color.fromARGB(
                                      188,
                                      211,
                                      31,
                                      85,
                                    ),
                                    width: 150,
                                    textColor: Colors.white,
                                  ),
                                  5.wt,
                                  MyElevatedButton(
                                    text: 'Minor: 1',
                                    buttonColor: const Color.fromARGB(
                                      255,
                                      243,
                                      241,
                                      128,
                                    ),
                                    width: 150,
                                    textColor: Colors.black,
                                  ),
                                  5.wt,
                                  SizedBox(
                                    width: 150.w,
                                    height: 40.h,
                                    child: MyDropDownButton(
                                      hint: 'All Conflicts',
                                      items: ['All Conflicts', 'other'],
                                    ),
                                  ),
                                ],
                              ),
                              20.ht,
                              MyElevatedButton(
                                text: " Run Conflict Check",
                                width: 200,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  Row(
                    children: [
                      MyBox(height: 1, 
                      width: 700, 
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        TextInterFamily(fontSize: 20, fontWeight: FontWeight.w600, text: 'Interactive Timetable View', textHeight: 1.4),
                        Divider(),
                        // MyDataTable(
                          
                        // )

                                            ],
                                          ),
                      )
                  ),
                  Divider(),
                  MyBox(height:1,width:380,child:  Column(children: [
            
                    ],
                  )),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
