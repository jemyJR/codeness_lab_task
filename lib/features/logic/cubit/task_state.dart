part of 'task_cubit.dart';

sealed class TaskState {}

final class TaskInitial extends TaskState {}

final class TaskSelected extends TaskState {
  final int index;

  TaskSelected(this.index);
}
