import 'package:codeness_lab_task/core/routing/routes.dart';
import 'package:codeness_lab_task/features/task/ui/task_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.taskScreen:
        return MaterialPageRoute(
          builder: (context) => const TaskScreen(),
        );
    }
    return null;
  }
}
