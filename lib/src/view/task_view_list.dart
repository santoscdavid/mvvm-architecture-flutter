import 'package:flutter/cupertino.dart';
import 'package:mvvm_architecture_flutter/src/view_model/task_list_view_model.dart';
import 'package:provider/provider.dart';

import '../model/task_model.dart';

class TaskViewList extends StatelessWidget {
  const TaskViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text("Task List"),
      ),
      child: Consumer<TaskListViewModel>(builder: (context, viewModel, child) {
        return ListView.builder(
          itemCount: viewModel.tasks.length,
          itemBuilder: (context, index) {
            final TaskModel task = viewModel.tasks[index];

            return CupertinoListTile(
              title: Text(task.title),
              leading: CupertinoCheckbox(
                value: task.isCompleted,
                onChanged: (_) {
                  viewModel.toggleTaskCompletion(index);
                },
              ),
            );
          },
        );
      }),
    );
  }
}
