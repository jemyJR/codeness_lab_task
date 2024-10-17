import 'package:codeness_lab_task/features/task/ui/widgets/tasks_bloc_builder.dart';
import 'package:flutter/material.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/constants/app_style.dart';

class TaskScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: AppColors.white,
        scrolledUnderElevation: 0,
        elevation: 0,
        title: Center(
          child: Text('Task Screen', style: AppStyle.font20BlackBold),
        ),
      ),
      body: TasksBlocBuilder(controller: _controller),
    );
  }
}
