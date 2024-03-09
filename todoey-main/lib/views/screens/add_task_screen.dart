import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:todoey/controllers/task_controller.dart';
import 'package:todoey/models/task_model.dart';

class AddTaskScreen extends StatelessWidget {
  AddTaskScreen({super.key});

  final taskController = Get.find<TaskController>();

  @override
  Widget build(BuildContext context) {
    TextEditingController taskTextController = TextEditingController();
    final TaskController taskController = Get.put(TaskController());

    return Container(
      color: const Color(0xff757575),
      child: Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20), topLeft: Radius.circular(20))),
        child: Padding(
          padding: const EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                'Add Task',
                style: TextStyle(color: Colors.lightBlueAccent, fontSize: 30),
                textAlign: TextAlign.center,
              ),
              TextField(
                controller: taskTextController,
                autofocus: true,
                textAlign: TextAlign.center,
              ),
              ElevatedButton(
                child: const Text('Add'),
                onPressed: () {
                  /// taskController.addTask(taskTextController.text);
                  taskController.taskList.add(
                    Task(name: taskTextController.text),
                  );
                  Get.back();

                  /// setState(() {
                  ///   taskData.addTask(taskTextController.text);
                  ///   Navigator.pop(context);
                  /// });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
