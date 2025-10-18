import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});
  



  Text drawerText(String text){
    return Text(text,
            style: TextStyle(
              fontFamily: 'inter',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
              color: Colors.black,
              decoration: TextDecoration.none,
            ),
            
          );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child:ListView(
        children: [
          ListTile(
            leading: Icon(Icons.admin_panel_settings_outlined),
            title: drawerText('Admin Dashboard') ,
            onTap: ()=>context.go('/admin'),
          ),
          ListTile(
            leading: Icon(Icons.calendar_month_outlined),
            title: drawerText('Timetable Generation') ,
            onTap: ()=>context.go('/timetable_gen'),
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings_outlined),
            title: drawerText('Conflict Resolution And Scenerio Simulation') ,
            onTap: ()=>context.go('/conflict_and_scenerio'),
          ),
          ListTile(
            leading: Icon(Icons.admin_panel_settings_outlined),
            title: drawerText('Timetable View') ,
            onTap: ()=>context.go('/timetable_view'),
          )
        ],
      )
    );
  }
}