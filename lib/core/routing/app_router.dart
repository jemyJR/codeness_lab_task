import '../di/dependency_injection.dart';
import 'routes.dart';
import '../../features/task/logic/task_cubit.dart';
import '../../features/task/ui/task_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.taskScreen:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<TaskCubit>()..loadTasks(),
            child: TaskScreen(),
          ),
        );
    }
    return null;
  }
}
