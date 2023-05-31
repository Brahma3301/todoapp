import 'package:flutter/cupertino.dart';

import 'package:flutter/foundation.dart';

import 'dart:collection';

import 'package:todo_app/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'buy milk'),
    Task(name: 'buy dog'),
    Task(name: 'buy cat'),
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskcount {
    return _tasks.length;
  }

  void addtask(String newtasktitle) {
    final task = Task(name: newtasktitle);
    _tasks.add(task);
    notifyListeners();
  }

  void updatetask(Task task) {
    task.toggledone();
    notifyListeners();
  }

  void deletetask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
