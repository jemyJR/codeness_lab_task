import 'package:codeness_lab_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/constants/app_style.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('Task Screen', style: AppStyle.font20BlackBold),
        ),
      ),
      body: const Center(
        child: Text(
          'This is the task screen',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
