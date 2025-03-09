import 'package:get/get.dart';

class ForgotPasswordController extends GetxController {
  var email = ''.obs;
  void resetPassword() {
    if (email.value.isNotEmpty) {
      Get.snackbar('Success', 'Password reset link sent to ${email.value}',
          snackPosition: SnackPosition.BOTTOM);
    } else {
      Get.snackbar('Error', 'Please enter your email',
          snackPosition: SnackPosition.BOTTOM);
    }
  }
}
