part of 'task_cubit.dart';

sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskSelected extends TaskState {
  final int index;

  TaskSelected(this.index);
}

class TaskLoaded extends TaskState {
  final List<TaskModel> tasks;
  final int selectedIndex;

  TaskLoaded({required this.tasks, required this.selectedIndex});
}
