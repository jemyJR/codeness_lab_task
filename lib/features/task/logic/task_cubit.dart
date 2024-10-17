import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../data/models/task_model.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  final Box<TaskModel> taskBox;
  List<TaskModel> tasks = [];
  int selectedIndex = 0;

  TaskCubit(this.taskBox) : super(TaskInitial());

  void loadTasks() {
    emit(TaskLoaded(
        tasks: taskBox.values.toList(), selectedIndex: selectedIndex));
  }

  void addTask(String title) {
    final task = TaskModel(taskText: title, isDone: false);
    taskBox.add(task);
    emit(TaskLoaded(
        tasks: taskBox.values.toList(), selectedIndex: selectedIndex));
  }

  void toggleTaskCompletion(int index) {
    final task = taskBox.getAt(index);
    task?.isDone = !task.isDone;
    taskBox.putAt(index, task!);
    loadTasks();
  }

  void deleteTask(int index) {
    taskBox.deleteAt(index);
    loadTasks();
  }

  void selectTab(int index) {
    selectedIndex = index;
    loadTasks();
  }
}
