import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login_form/controllers/task_controller.dart';
import 'package:login_form/view/widgets/task_title.dart';



class TasksList extends StatelessWidget {
  TasksList({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: taskController.taskList.length,
      itemBuilder: (BuildContext context, int index) {
        var task = taskController.taskList[index];
        return Dismissible(
          key: UniqueKey(),
          background: Container(
            color: Colors.deepOrange,
            child: const Icon(
              Icons.delete,
              color: Colors.white,
            ),
          ),
          onDismissed: (_) {
            taskController.taskList.removeAt(index);
            Get.snackbar('Remove!', "Task was succesfully Delete",
                snackPosition: SnackPosition.BOTTOM);
          },
          child: TaskTile(
            taskTitle: task.name,
            isChecked: task.isDone,
            toggleCheckBoxState: (bool? checkBoxState) {
              /// taskController.toggleDone(index);
              taskController.taskList[index].isDone = checkBoxState ?? false;
            },
          ),
        );
      },
    );
  }
}
