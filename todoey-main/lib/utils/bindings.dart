import 'package:get/get.dart';

import '../controllers/task_controller.dart';

class MyBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TaskController());
  }
}
