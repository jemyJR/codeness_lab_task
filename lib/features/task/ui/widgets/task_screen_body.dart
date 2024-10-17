import '../../../../core/helpers/spacing.dart';
import '../../data/models/task_model.dart';
import '../../logic/task_cubit.dart';
import 'custom_button.dart';
import 'custom_text_form_field.dart';
import 'tabbar_row.dart';
import 'task_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskScreenBody extends StatelessWidget {
  const TaskScreenBody({
    super.key,
    required this.selectedIndex,
    required TextEditingController controller,
    required this.tasks,
  }) : _controller = controller;

  final int selectedIndex;
  final TextEditingController _controller;
  final List<TaskModel> tasks;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
      child: Column(
        children: [
          TabBarRow(selectedIndex: selectedIndex),
          verticalSpace(10),
          isAllField(
            selectedIndex,
            CustomTextFormFireld(controller: _controller),
          ),
          verticalSpace(10),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                final task = tasks[index];
                return TaskRow(
                  task: task,
                  onDelete: () => context.read<TaskCubit>().deleteTask(index),
                  onToggle: () =>
                      context.read<TaskCubit>().toggleTaskCompletion(index),
                );
              },
            ),
          ),
          verticalSpace(10),
          isAllField(
            selectedIndex,
            CustomButton(
              onTap: () {
                if (_controller.text.isNotEmpty) {
                  context.read<TaskCubit>().addTask(_controller.text);
                  _controller.clear();
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget isAllField(int selectedIndex, Widget widget) {
  return selectedIndex == 0 ? widget : const SizedBox.shrink();
}
