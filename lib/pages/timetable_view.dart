import 'package:ai_schedular/widgets/app_drawer.dart';
import 'package:ai_schedular/widgets/my_app_bar.dart';
import 'package:flutter/material.dart';

class TimetableView extends StatelessWidget {
  const TimetableView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: Row(
        children: [
          AppDrawer(),
          Text('Work Under Progress'),
        ],
      ),
    );
  }
}
