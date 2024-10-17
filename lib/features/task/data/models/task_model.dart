import 'package:hive/hive.dart';

part 'task_model.g.dart';

@HiveType(typeId: 0)
class TaskModel extends HiveObject {
  @HiveField(0)
  final String taskText;

  @HiveField(1)
  bool isDone;

  TaskModel({required this.taskText, this.isDone = false});
}
