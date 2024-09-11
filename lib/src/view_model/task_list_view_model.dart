import 'package:flutter/cupertino.dart';

import '../model/task_model.dart';

class TaskListViewModel extends ChangeNotifier {
  List<TaskModel> tasks =
      List.generate(10, (index) => TaskModel(title: 'Item ${index + 1}'));

  void toggleTaskCompletion(int index) {
    tasks[index].isCompleted = !tasks[index].isCompleted;
    notifyListeners();
  }
}
