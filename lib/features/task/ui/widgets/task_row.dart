import 'package:codeness_lab_task/core/constants/app_colors.dart';
import 'package:codeness_lab_task/features/task/data/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_style.dart';

class TaskRow extends StatelessWidget {
  const TaskRow({
    super.key,
    required this.task,
    required this.onDelete,
    required this.onToggle,
  });
  final TaskModel task;
  final VoidCallback onDelete;
  final VoidCallback onToggle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.h),
      child: Row(
        children: [
          Checkbox(
            value: task.isDone,
            onChanged: (value) => onToggle(),
            activeColor: AppColors.blue,
          ),
          Expanded(
            child: Text(
              task.taskText,
              style: AppStyle.font18Black,
            ),
          ),
          IconButton(
            onPressed: onDelete,
            icon: const Icon(Icons.delete),
          ),
        ],
      ),
    );
  }
}
