import 'package:codeness_lab_task/core/helpers/spacing.dart';
import 'package:codeness_lab_task/features/logic/cubit/task_cubit.dart';
import 'package:codeness_lab_task/features/task/ui/widgets/tab_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabBarRow extends StatelessWidget {
  const TabBarRow({
    super.key,
    required this.selectedIndex,
  });

  final int selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabContainer(
          title: 'All',
          onTap: () => context.read<TaskCubit>().selectTab(0),
          isSelected: selectedIndex == 0,
        ),
        horizontalSpace(5),
        TabContainer(
          title: 'Not Done',
          onTap: () => context.read<TaskCubit>().selectTab(1),
          isSelected: selectedIndex == 1,
        ),
        horizontalSpace(5),
        TabContainer(
          title: 'Done',
          onTap: () => context.read<TaskCubit>().selectTab(2),
          isSelected: selectedIndex == 2,
        ),
      ],
    );
  }
}
