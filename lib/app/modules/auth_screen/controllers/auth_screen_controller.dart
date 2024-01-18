import 'package:breath_freely/app/routes/app_pages.dart';
import 'package:breath_freely/configs/form_config.dart';
import 'package:get/get.dart';

class AuthScreenController extends GetxController {
  //TODO: Implement AuthScreenController
  RxBool isObscureText = true.obs;
  RxBool isLogin = true.obs;
  RxString switchText = "Belum punya akun? Klik Disini".obs;
  RxString titleText = "Login".obs;
  var selectedFields = loginForm.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void toggleObscureText() {
    isObscureText.value = !isObscureText.value;
  }

  void toggleSwitchAuth() {
    isLogin.value = !isLogin.value;
    if (!isLogin.value) {
      switchText.value = "Sudah punya akun? Klik Disini";
      selectedFields.value = registerForm;
      titleText.value = "Register";
    } else {
      switchText.value = "Belum punya akun? Klik Disini";
      selectedFields.value = loginForm;
      titleText.value = "Login";
    }
  }

  void proceedAuth() {
    if (isLogin.value) {
      Get.offAllNamed(Routes.HOME);
    } else {
      Get.offAllNamed(Routes.HOME);
    }
  }
}
