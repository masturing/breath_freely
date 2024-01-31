import 'package:breath_freely/app/domain/repositories/implementation/user_repository.dart';
import 'package:breath_freely/configs/form_config.dart';
import 'package:breath_freely/configs/form_controller.dart';
import 'package:breath_freely/shared/utils/form.dart';
import 'package:flutter/material.dart';
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
      FormCheck.clearForm(registerFormController);
    } else {
      switchText.value = "Belum punya akun? Klik Disini";
      selectedFields.value = loginForm;
      titleText.value = "Login";
      FormCheck.clearForm(loginFormController);
    }
  }

  void proceedAuth() {
    if (isLogin.value) {
      if (FormCheck.isFilled(loginFormController)) {
        UserRepository().login(
            email: loginFormController['email']!.text,
            password: loginFormController['password']!.text);
      } else {
        Get.snackbar("Error", "Harap isi semua field",
            backgroundColor: Colors.white);
      }
    } else {
      if (FormCheck.isFilled(registerFormController)) {
        UserRepository().register(
            fullname: registerFormController['fullname']!.text,
            email: registerFormController['email']!.text,
            password: registerFormController['password']!.text,
            confirmPassword: registerFormController['confirmPassword']!.text,
            gender: registerFormController['gender']!.text,
            yearBirth: int.parse(registerFormController['yearOfBirth']!.text),
            telephone: registerFormController['telephone']!.text,
            hobby: registerFormController['hobby']!.text,
            onSuccess: () {
              toggleSwitchAuth();
            });
      } else {
        Get.snackbar("Error", "Harap isi semua field",
            backgroundColor: Colors.white);
      }
    }
  }
}
