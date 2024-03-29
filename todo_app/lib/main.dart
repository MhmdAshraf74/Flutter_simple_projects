import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:todo_app/firebase_option.dart';
import 'package:todo_app/utils/routes.dart';
import 'package:todo_app/view/screens/signup_screen.dart';

import 'firebase_options.dart';

void main() async {
  await GetStorage.init();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      /// initialBinding: MyBindings(),
      debugShowCheckedModeBanner: false,
      getPages: Routes.pages,
      initialRoute: SignupScreen.id,
    );
  }
}
