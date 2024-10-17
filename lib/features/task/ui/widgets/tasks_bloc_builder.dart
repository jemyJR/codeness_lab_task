import 'package:codeness_lab_task/features/task/data/models/task_model.dart';
import 'package:codeness_lab_task/features/task/logic/task_cubit.dart';
import 'package:codeness_lab_task/features/task/ui/widgets/task_screen_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TasksBlocBuilder extends StatelessWidget {
  const TasksBlocBuilder({
    super.key,
    required TextEditingController controller,
  }) : _controller = controller;

  final TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TaskCubit, TaskState>(
      builder: (context, state) {
        int selectedIndex = 0;
        List<TaskModel> tasks = [];

        if (state is TaskLoaded) {
          selectedIndex = state.selectedIndex;
          // Filter tasks based on selected tab
          if (selectedIndex == 1) {
            tasks = state.tasks.where((task) => !task.isDone).toList();
          } else if (selectedIndex == 2) {
            tasks = state.tasks.where((task) => task.isDone).toList();
          } else {
            tasks = state.tasks;
          }
        }

        return TaskScreenBody(
          selectedIndex: selectedIndex,
          controller: _controller,
          tasks: tasks,
        );
      },
    );
  }
}
