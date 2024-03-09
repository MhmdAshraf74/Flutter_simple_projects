import 'package:get/get.dart';
import 'package:todo_app/view/screens/login_screen.dart';
import 'package:todo_app/view/screens/signup_screen.dart';
import 'package:todo_app/view/screens/tasks_screen.dart';


class Routes {
  static List<GetPage> get pages => [
        GetPage(name: LoginScreen.id, page: () => LoginScreen()),
        GetPage(name: TasksScreen.id, page: () => TasksScreen()),
        GetPage(name: SignupScreen.id, page: () => SignupScreen()),
      ];
}
