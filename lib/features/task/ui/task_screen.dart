import 'package:codeness_lab_task/core/constants/app_colors.dart';
import 'package:codeness_lab_task/core/helpers/spacing.dart';
import 'package:codeness_lab_task/features/logic/cubit/task_cubit.dart';
import 'package:codeness_lab_task/features/task/ui/widgets/custom_text_form_field.dart';
import 'package:codeness_lab_task/features/task/ui/widgets/tabbar_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocBuilder<TaskCubit, TaskState>(
        builder: (context, state) {
          int selectedIndex = 0;
          if (state is TaskSelected) {
            selectedIndex = state.index;
          }
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
            child: Column(
              children: [
                TabBarRow(selectedIndex: selectedIndex),
                verticalSpace(10),
                const CustomTextFormFireld(),
              ],
            ),
          );
        },
      ),
    );
  }
}
