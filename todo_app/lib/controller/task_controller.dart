import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:todo_app/models/task_model.dart';


class TaskController extends GetxController {
  RxList<Task> taskList = List<Task>.empty().obs;

  @override
  void onInit() {
    List? storedTasks = GetStorage().read<List>('taskList');

    if (storedTasks != null) {
      taskList = storedTasks.map((e) => Task.fromJson(e)).toList().obs;
    }

    ever(taskList, (_) {
      GetStorage().write('task', taskList.toList());
    });

    super.onInit();
  }
}
