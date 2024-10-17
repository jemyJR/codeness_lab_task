import 'package:codeness_lab_task/codeness_lab_task.dart';
import 'package:codeness_lab_task/features/task/data/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'core/routing/app_router.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());
  await Hive.openBox<TaskModel>('tasksBox');
  runApp(
    CodenessLabTask(
      appRouter: AppRouter(),
    ),
  );
}
