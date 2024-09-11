import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

import 'src/view/task_view_list.dart';
import 'src/view_model/task_list_view_model.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => TaskListViewModel()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'MVVM Architecture Example',
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        brightness: Brightness.dark,
      ),
      home: TaskViewList(),
    );
  }
}
