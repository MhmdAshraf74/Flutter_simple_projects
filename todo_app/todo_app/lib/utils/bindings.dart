import 'package:get/get.dart';
import 'package:todo_app/controller/task_controller.dart';



class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskController());
  }
}
