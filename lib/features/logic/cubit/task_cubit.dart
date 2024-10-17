import 'package:flutter_bloc/flutter_bloc.dart';

part 'task_state.dart';

class TaskCubit extends Cubit<TaskState> {
  TaskCubit() : super(TaskInitial());

  // Function to select the tab
  void selectTab(int index) {
    emit(TaskSelected(index));
  }
}
