import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../data/models/task_model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  List<TaskModel> tasks = [];
  int selectedIndex = 0;
  TaskCubit() : super(TaskInitial());

  void loadTasks() {
    final taskBox = Hive.box<TaskModel>('tasksBox');
    emit(TaskLoaded(
        tasks: taskBox.values.toList(), selectedIndex: selectedIndex));
  }

  void addTask(String title) {
    final task = TaskModel(taskText: title, isDone: false);
    final taskBox = Hive.box<TaskModel>('tasksBox');
    taskBox.add(task);

    emit(TaskLoaded(
        tasks: taskBox.values.toList(), selectedIndex: selectedIndex));
  }

  void toggleTaskCompletion(int index) {
    final taskBox = Hive.box<TaskModel>('tasksBox');
    final task = taskBox.getAt(index);
    task?.isDone = !task.isDone;
    taskBox.putAt(index, task!);
    loadTasks();
  }

  void deleteTask(int index) {
    final taskBox = Hive.box<TaskModel>('tasksBox');
    taskBox.deleteAt(index);

    loadTasks();
  }

  void selectTab(int index) {
    selectedIndex = index;
    loadTasks();
  }
}
