import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:todoey/views/screens/login_screen.dart';
import 'package:todoey/views/screens/tasks_screen.dart';

class AuthService {
  var auth = FirebaseAuth.instance;

  signMeUp(String email, String password) async {
    try {
      final credential = await auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('User created!', "please log in",
          snackPosition: SnackPosition.BOTTOM);
      Get.toNamed(LoginScreen.id);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        /// print('The password provided is too weak.');
        Get.snackbar('Error!', "The password provided is too weak.",
            snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'email-already-in-use') {
        /// print('The account already exists for that email.');
        Get.snackbar('Error!', "The account already exists for that email.",
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      /// print(e);
      Get.snackbar('Error!', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }

  logMeIn(String email, String password) async {
    try {
      await auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Get.snackbar('Great!', "Logged in successfully",
          snackPosition: SnackPosition.BOTTOM);
      Get.toNamed(TasksScreen.id);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        /// print('The password provided is too weak.');
        Get.snackbar('Error!', 'No user found for that email.',
            snackPosition: SnackPosition.BOTTOM);
      } else if (e.code == 'wrong-password') {
        /// print('The account already exists for that email.');
        Get.snackbar('Error!', 'Wrong password provided for that user.',
            snackPosition: SnackPosition.BOTTOM);
      }
    } catch (e) {
      /// print(e);
      Get.snackbar('Error!', e.toString(), snackPosition: SnackPosition.BOTTOM);
    }
  }
}
