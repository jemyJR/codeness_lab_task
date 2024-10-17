import 'package:get_it/get_it.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../features/task/data/models/task_model.dart';
import '../../features/task/logic/task_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Ensure Hive is initialized
  await Hive.initFlutter();
  Hive.registerAdapter(TaskModelAdapter());

  // Open the Hive box
  final box = await Hive.openBox<TaskModel>('tasksBox');
  getIt.registerSingleton<Box<TaskModel>>(box);

  // Register TaskCubit
  getIt.registerLazySingleton<TaskCubit>(
      () => TaskCubit(getIt<Box<TaskModel>>()));
}
