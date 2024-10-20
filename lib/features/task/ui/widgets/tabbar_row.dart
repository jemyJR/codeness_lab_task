import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/helpers/spacing.dart';
import '../../logic/task_cubit.dart';
import 'tab_container.dart';

class TabBarRow extends StatelessWidget {
  final int selectedIndex;

  const TabBarRow({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    final taskCubit = context.read<TaskCubit>();
    return Row(
      children: [
        TabContainer(
          title: 'All',
          isSelected: selectedIndex == 0,
          onTap: () => taskCubit.selectTab(0),
        ),
        horizontalSpace(5),
        TabContainer(
          title: 'Not Done',
          isSelected: selectedIndex == 1,
          onTap: () => taskCubit.selectTab(1),
        ),
        horizontalSpace(5),
        TabContainer(
          title: 'Done',
          isSelected: selectedIndex == 2,
          onTap: () => taskCubit.selectTab(2),
        ),
      ],
    );
  }
}
