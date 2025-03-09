import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUptController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void signUp() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      Get.snackbar("Error", "Please enter both email and password",
          snackPosition: SnackPosition.BOTTOM);
      return;
    }

    Get.snackbar("Success", "Sign Ups successful",
        snackPosition: SnackPosition.BOTTOM);
  }

  void googleLogin() {
    // Implement Google Sign-In logic here
    Get.snackbar("Info", "Google Sign-In clicked",
        snackPosition: SnackPosition.BOTTOM);
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
