import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool ischecked;
  final String tasktitle;
  final ValueChanged<bool?> checkboxCallback;
  final VoidCallback longpresscallback;
  TaskTile(
      {required this.ischecked,
      required this.tasktitle,
      required this.checkboxCallback,
      required this.longpresscallback,
      });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpresscallback,
      title: Text(
        tasktitle,
        style: TextStyle(
            decoration: ischecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: ischecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
