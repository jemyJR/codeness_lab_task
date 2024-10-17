import 'package:codeness_lab_task/core/routing/routes.dart';
import 'package:codeness_lab_task/features/task/logic/task_cubit.dart';
import 'package:codeness_lab_task/features/task/ui/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.taskScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => TaskCubit()..loadTasks(),
            child: TaskScreen(),
          ),
        );
    }
    return null;
  }
}
