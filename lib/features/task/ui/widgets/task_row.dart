import 'package:codeness_lab_task/core/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_style.dart';

class TaskRow extends StatelessWidget {
  const TaskRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (value) {},
            activeColor: AppColors.blue,
          ),
          Expanded(
            child: Text(
              'Task 1dfgnalsnsfgjnedfhdfhfdsfdhsdfhh',
              style: AppStyle.font18Black,
              maxLines: 10,
              overflow: TextOverflow.ellipsis,
              softWrap: true,
            ),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.delete))
        ],
      ),
    );
  }
}
