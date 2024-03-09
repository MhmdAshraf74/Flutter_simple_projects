import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:todo_app/controller/task_controller.dart';
import 'package:todo_app/view/screens/addTask_screen.dart';


import 'add_task_screen.dart';

class TasksScreen extends StatelessWidget {
  static const id = "/tasks";
  TasksScreen({super.key});

  final TaskController taskController = Get.put(TaskController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[900],
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            /// showModalBottomSheet(
            ///     context: context, builder: (context) => AddTaskScreen());
            Get.bottomSheet(AddTaskScreen());
          },
          backgroundColor: Colors.green[900],
          foregroundColor: Colors.white,
          child: const Icon(Icons.add),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(
                  top: 60, bottom: 30, left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.green[900],
                      radius: 30,
                      child: const Icon(Icons.list, size: 30)),
                  const SizedBox(height: 10),
                  const Text(
                    'Todoey',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 50,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Obx(() => Text('${taskController.taskList.length} Tasks',
                      style:
                          const TextStyle(fontSize: 18, color: Colors.white))),
                ],
              ),
            ),
            Obx(
              () => Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30),
                    ),
                  ),
                  child: (taskController.taskList.isEmpty)
                      ? const Center(child: Text("No Tasks Left. Add one now!"))
                      : Obx(
                          () => ListView.builder(
                            itemBuilder: (context, index) => Dismissible(
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
                                Get.snackbar(
                                    'Removed!', "Task was succesfully Delete",
                                    snackPosition: SnackPosition.BOTTOM);
                              },
                              child: ListTile(
                                contentPadding: const EdgeInsets.symmetric(
                                    horizontal: 50, vertical: 20),
                                title: Text(
                                  taskController.taskList[index].name,
                                  style: taskController.taskList[index].isDone
                                      ? const TextStyle(
                                          color: Colors.red,
                                          decoration:
                                              TextDecoration.lineThrough,
                                        )
                                      : const TextStyle(
                                          color: Colors.black,
                                        ),
                                ),
                                leading: const Icon(
                                  (Icons.note),
                                ),
                                trailing: Checkbox(
                                  value: taskController.taskList[index].isDone,
                                  onChanged: (neWvalue) {
                                    var task = taskController.taskList[index];
                                    task.isDone = neWvalue!;
                                    taskController.taskList[index] = task;
                                  },
                                ),
                              ),
                            ),
                            itemCount: taskController.taskList.length,
                          ),
                        ),
                ),
              ),
            )
          ],
        ));
  }
}
