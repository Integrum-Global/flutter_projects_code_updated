import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  String taskTitle;
  final Function(bool?) checkboxCallback;
  final VoidCallback longPressCallback;

  TaskTile({
    this.isChecked = false,
    this.taskTitle = '',
    required this.longPressCallback,
    required this.checkboxCallback,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        onLongPress: longPressCallback,
        title: Text(
          taskTitle,
          style: TextStyle(
              decoration: isChecked ? TextDecoration.lineThrough : null),
        ),
        trailing: Checkbox(
          activeColor: Colors.lightBlueAccent,
          value: isChecked,
          onChanged: checkboxCallback,
        ));
  }
}
